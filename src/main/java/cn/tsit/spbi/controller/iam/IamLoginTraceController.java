package cn.tsit.spbi.controller.iam;

import com.diboot.core.controller.BaseCrudRestController;
import com.diboot.core.vo.JsonResult;
import com.diboot.core.vo.Pagination;
import com.diboot.iam.annotation.BindPermission;
import com.diboot.iam.annotation.Log;
import com.diboot.iam.annotation.OperationCons;
import com.diboot.iam.entity.IamLoginTrace;
import com.diboot.iam.vo.IamLoginTraceVO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import lombok.extern.slf4j.Slf4j;

/**
 * 登录日志
 *
 * @author tsit
 * @version 1.0
 * @date 2022-07-18
 * Copyright © tsit
 */
@RestController
@RequestMapping("/iam/loginTrace")
@Slf4j
@Tag(name = "登录日志", description = "登录日志相关查看接口")
@BindPermission(name = "登录日志")
public class IamLoginTraceController extends BaseCrudRestController<IamLoginTrace> {

    /**
     * 查询分页数据
     *
     * @return
     * @throws Exception
     */
    @Operation(summary = "获取列表分页数据")
		@Log(operation = OperationCons.LABEL_LIST)
    @BindPermission(name = OperationCons.LABEL_LIST, code = OperationCons.CODE_READ)
    @GetMapping("/list")
    public JsonResult getViewObjectListMapping(IamLoginTrace entity, Pagination pagination) throws Exception{
        return super.getViewObjectList(entity, pagination, IamLoginTraceVO.class);
    }

}