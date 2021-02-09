-- 实际应用中，这里的表要先建起来，否则批处理录库的时候会找不到表
DROP TABLE IF EXISTS t_person;
CREATE TABLE t_person(
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    real_name VARCHAR(32) NOT NULL,
    age       INT         NOT NULL,
    birth_day DATETIME    NOT NULL,
    create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COMMENT='人类信息表';