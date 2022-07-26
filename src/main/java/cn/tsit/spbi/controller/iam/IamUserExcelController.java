package cn.tsit.spbi.controller.iam;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.diboot.core.util.BeanUtils;
import com.diboot.core.util.D;
import com.diboot.core.util.V;
import com.diboot.core.vo.JsonResult;
import com.diboot.core.vo.Status;
import cn.tsit.spbi.excel.listener.IamUserImportExcelListener;
import cn.tsit.spbi.excel.model.IamUserExportModel;
import cn.tsit.spbi.excel.model.IamUserImportModel;
import com.diboot.file.controller.BaseExcelFileController;
import com.diboot.file.excel.listener.ReadExcelListener;
import com.diboot.file.util.ExcelHelper;
import com.diboot.iam.annotation.OperationCons;
import com.diboot.iam.annotation.BindPermission;
import com.diboot.iam.annotation.Log;
import com.diboot.iam.dto.IamUserSearchDTO;
import com.diboot.iam.entity.IamUser;
import com.diboot.iam.service.IamUserService;
import com.diboot.iam.vo.IamUserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import lombok.extern.slf4j.Slf4j;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
* 用户Excel上传下载Controller
* @author tsit
* @version 1.0
* @date 2022-07-18
* Copyright © tsit
*/
@RestController
@RequestMapping("/iam/user/excel")
@Slf4j
@Tag(name = "用户Excel上传下载", description = "用户Excel上传下载接口")
@BindPermission(name = "用户Excel上传下载", code = "IamUserExcel")
public class IamUserExcelController extends BaseExcelFileController {

    @Autowired
    private IamUserService iamUserService;

    /**
     * 下载示例文件
     * @throws Exception
     */
    @Operation(summary = "下载导入示例文件")
    @BindPermission(name = "下载导入示例文件", code = OperationCons.CODE_IMPORT)
    @GetMapping("/downloadExample")
    public void downloadExample(HttpServletResponse response) throws Exception{
        String fileName = "用户导入示例.xlsx";
        ExcelHelper.exportExcel(response, fileName, IamUserImportModel.class, null);
    }

    /***
     * 预览数据
     * @throws Exception
     */
    @Operation(summary = "excel预览")
    @Log(operation = "Excel预览", businessObj = "IamUser")
    @BindPermission(name = "Excel导入预览", code = OperationCons.CODE_IMPORT)
    @PostMapping("/preview")
    public JsonResult preview(@RequestParam("file") MultipartFile file, @RequestParam Map<String, Object> params) throws Exception {
        return super.excelPreview(file, IamUser.class, params);
    }
    
		/***
     * 预览保存
     * @throws Exception
     */
    @Operation(summary = "excel预览导入用户")
		@Log(operation = "Excel预览导入用户", businessObj = "IamUser")
    @BindPermission(name = OperationCons.LABEL_IMPORT, code = OperationCons.CODE_IMPORT)
    @PostMapping("/previewSave")
    public JsonResult previewSave(@RequestParam Map<String, Object> params) throws Exception {
        return super.excelPreviewSave(params);
    }

    /***
     * excel导入用户
     * @throws Exception
     */
    @Operation(summary = "excel导入用户")
		@Log(operation = "Excel导入用户", businessObj = "IamUser")
    @BindPermission(name = OperationCons.LABEL_IMPORT, code = OperationCons.CODE_IMPORT)
    @PostMapping("/upload")
    public JsonResult upload(@RequestParam("file") MultipartFile file, @RequestParam Map<String, Object> params) throws Exception {
        return super.uploadExcelFile(file, IamUser.class, params);
    }

    /***
     * 人员列表导出
     * @param iamUserDto
     * @return
     * @throws Exception
     */
    @Operation(summary = "获取列表分页数据")
		@Log(operation = "导出用户列表", businessObj = "IamUser")
    @BindPermission(name = OperationCons.LABEL_EXPORT, code = OperationCons.CODE_EXPORT)
    @GetMapping("/export")
    public JsonResult export(IamUserSearchDTO iamUserDto, @RequestParam(value = "columns", required = false) List<String> columns,
    												 HttpServletResponse response) throws Exception {
        QueryWrapper<IamUser> queryWrapper = super.buildQueryWrapperByQueryParams(iamUserDto);
        List<IamUserVO> iamUserList = iamUserService.getViewObjectList(queryWrapper, null, IamUserVO.class);
        if (V.isEmpty(iamUserList)) {
            return new JsonResult(Status.FAIL_OPERATION, "用户列表为空，导出失败");
        }
        String fileName = "用户列表导出_" + D.today() + ".xlsx";
        List<IamUserExportModel> dataList = this.entityList2ExcelList(iamUserList);
        ExcelHelper.exportExcel(response, fileName, IamUserExportModel.class, columns, dataList);
        return null;
    }

    /***
     * 实体列表转excel列表
     * @param userVoList
     * @return
     */
    private List<IamUserExportModel> entityList2ExcelList(List<IamUserVO> userVoList) {
        if (V.isEmpty(userVoList)) {
            return Collections.emptyList();
        }
        List<IamUserExportModel> excelModelList = new ArrayList<>();
        for (IamUserVO vo : userVoList) {
            IamUserExportModel excelModel = new IamUserExportModel();
            BeanUtils.copyProperties(vo, excelModel);
            excelModel.setGender(vo.getGenderLabel());
            excelModelList.add(excelModel);
        }
        return excelModelList;
    }

    @Override
    protected ReadExcelListener<IamUserImportModel> getExcelDataListener() {
        return new IamUserImportExcelListener();
    }

}