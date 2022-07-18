package cn.tsit.spbi.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.diboot.core.entity.BaseEntity;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
* 自定义BaseEntity，对diboot-core的BaseEntity做差异化定义
* @author tsit
* @version 1.0
* @date 2022-07-18
* Copyright © tsit
*/
@Getter @Setter @Accessors(chain = true)
public abstract class BaseCustomEntity extends BaseEntity {
    private static final long serialVersionUID = 3812639146678808340L;

    @Schema(hidden = true)
    @TableId(type = IdType.AUTO)
    private Long id;

    @Schema(hidden = true)
    @JsonIgnore
    @TableLogic
    @TableField("is_deleted")
    private boolean deleted = false;

}
