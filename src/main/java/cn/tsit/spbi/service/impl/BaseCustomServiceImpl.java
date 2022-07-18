package cn.tsit.spbi.service.impl;

import com.diboot.core.service.impl.BaseServiceImpl;
import com.diboot.core.mapper.BaseCrudMapper;
import cn.tsit.spbi.service.BaseCustomService;
import lombok.extern.slf4j.Slf4j;
/**
* 自定义 BaseService 接口实现
* @author tsit
* @version 1.0
* @date 2022-07-18
 * Copyright © tsit
*/
@Slf4j
public class BaseCustomServiceImpl<M extends BaseCrudMapper<T>, T> extends BaseServiceImpl<M, T> implements BaseCustomService<T> {

}
