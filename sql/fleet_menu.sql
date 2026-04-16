-- ----------------------------
-- 机队管理菜单
-- ----------------------------

-- 一级菜单
insert into sys_menu values('2000', '机队飞行计划', '0', '5', '#', '', 'M', '0', '1', '', 'fa fa-plane', 'admin', sysdate(), '', null, '机队飞行计划目录');
insert into sys_menu values('2010', '机队飞行与维修任务', '0', '6', '#', '', 'M', '0', '1', '', 'fa fa-wrench', 'admin', sysdate(), '', null, '机队飞行与维修任务目录');
insert into sys_menu values('2020', '机队生产方案动态规划', '0', '7', '/fleet/dynamic', '', 'C', '0', '1', 'fleet:dynamic:view', 'fa fa-line-chart', 'admin', sysdate(), '', null, '机队生产方案动态规划菜单');
insert into sys_menu values('2030', '机队飞行与维修方案', '0', '8', '#', '', 'M', '0', '1', '', 'fa fa-calendar', 'admin', sysdate(), '', null, '机队飞行与维修方案目录');

-- 机队飞行计划 二级菜单
insert into sys_menu values('2001', '航班计划', '2000', '1', '/fleet/flightplan/schedule', '', 'C', '0', '1', 'fleet:flightplan:schedule:view', 'fa fa-list', 'admin', sysdate(), '', null, '航班计划菜单');
insert into sys_menu values('2002', 'MPD手册', '2000', '2', '/fleet/flightplan/mpd', '', 'C', '0', '1', 'fleet:flightplan:mpd:view', 'fa fa-book', 'admin', sysdate(), '', null, 'MPD手册菜单');
insert into sys_menu values('2003', '计划维修方案生成', '2000', '3', '/fleet/flightplan/maintenance', '', 'C', '0', '1', 'fleet:flightplan:maintenance:view', 'fa fa-cogs', 'admin', sysdate(), '', null, '计划维修方案生成菜单');

-- 机队飞行与维修任务 二级菜单
insert into sys_menu values('2011', '机队计划维修任务', '2010', '1', '/fleet/task/planned', '', 'C', '0', '1', 'fleet:task:planned:view', 'fa fa-tasks', 'admin', sysdate(), '', null, '机队计划维修任务菜单');
insert into sys_menu values('2012', '机队预测维修任务', '2010', '2', '/fleet/task/predicted', '', 'C', '0', '1', 'fleet:task:predicted:view', 'fa fa-eye', 'admin', sysdate(), '', null, '机队预测维修任务菜单');
insert into sys_menu values('2013', '一类非例行维修需求', '2010', '3', '/fleet/task/nonroutine1', '', 'C', '0', '1', 'fleet:task:nonroutine1:view', 'fa fa-exclamation-triangle', 'admin', sysdate(), '', null, '一类非例行维修需求菜单');
insert into sys_menu values('2014', '二类非例行维修需求', '2010', '4', '/fleet/task/nonroutine2', '', 'C', '0', '1', 'fleet:task:nonroutine2:view', 'fa fa-warning', 'admin', sysdate(), '', null, '二类非例行维修需求菜单');

-- 机队飞行与维修方案 二级菜单
insert into sys_menu values('2031', '机队生成计划甘特图', '2030', '1', '/fleet/scheme/gantt', '', 'C', '0', '1', 'fleet:scheme:gantt:view', 'fa fa-bar-chart', 'admin', sysdate(), '', null, '机队生成计划甘特图菜单');
insert into sys_menu values('2032', '机队维修计划调度', '2030', '2', '/fleet/scheme/dispatch', '', 'C', '0', '1', 'fleet:scheme:dispatch:view', 'fa fa-clock-o', 'admin', sysdate(), '', null, '机队维修计划调度菜单');
insert into sys_menu values('2033', '机队评估指标', '2030', '3', '/fleet/scheme/eval', '', 'C', '0', '1', 'fleet:scheme:eval:view', 'fa fa-pie-chart', 'admin', sysdate(), '', null, '机队评估指标菜单');

-- 航班计划 按钮
insert into sys_menu values('3000', '航班计划查询', '2001', '1', '#', '', 'F', '0', '1', 'fleet:flightplan:schedule:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3001', '航班计划新增', '2001', '2', '#', '', 'F', '0', '1', 'fleet:flightplan:schedule:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3002', '航班计划删除', '2001', '3', '#', '', 'F', '0', '1', 'fleet:flightplan:schedule:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3003', '航班计划导出', '2001', '4', '#', '', 'F', '0', '1', 'fleet:flightplan:schedule:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3004', '航班计划导入', '2001', '5', '#', '', 'F', '0', '1', 'fleet:flightplan:schedule:import', '#', 'admin', sysdate(), '', null, '');

-- MPD手册 按钮
insert into sys_menu values('3010', 'MPD手册查询', '2002', '1', '#', '', 'F', '0', '1', 'fleet:flightplan:mpd:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3011', 'MPD手册新增', '2002', '2', '#', '', 'F', '0', '1', 'fleet:flightplan:mpd:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3012', 'MPD手册删除', '2002', '3', '#', '', 'F', '0', '1', 'fleet:flightplan:mpd:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3013', 'MPD手册导出', '2002', '4', '#', '', 'F', '0', '1', 'fleet:flightplan:mpd:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3014', 'MPD手册导入', '2002', '5', '#', '', 'F', '0', '1', 'fleet:flightplan:mpd:import', '#', 'admin', sysdate(), '', null, '');

-- 计划维修方案生成 按钮
insert into sys_menu values('3020', '计划生成', '2003', '1', '#', '', 'F', '0', '1', 'fleet:flightplan:maintenance:generate', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3021', '结果查询', '2003', '2', '#', '', 'F', '0', '1', 'fleet:flightplan:maintenance:list', '#', 'admin', sysdate(), '', null, '');

-- 机队计划维修任务 按钮
insert into sys_menu values('3030', '计划维修任务查询', '2011', '1', '#', '', 'F', '0', '1', 'fleet:task:planned:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3031', '计划维修任务新增', '2011', '2', '#', '', 'F', '0', '1', 'fleet:task:planned:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3032', '计划维修任务删除', '2011', '3', '#', '', 'F', '0', '1', 'fleet:task:planned:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3033', '计划维修任务导出', '2011', '4', '#', '', 'F', '0', '1', 'fleet:task:planned:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3034', '计划维修任务导入', '2011', '5', '#', '', 'F', '0', '1', 'fleet:task:planned:import', '#', 'admin', sysdate(), '', null, '');

-- 机队预测维修任务 按钮
insert into sys_menu values('3040', '预测维修任务查询', '2012', '1', '#', '', 'F', '0', '1', 'fleet:task:predicted:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3041', '预测维修任务新增', '2012', '2', '#', '', 'F', '0', '1', 'fleet:task:predicted:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3042', '预测维修任务删除', '2012', '3', '#', '', 'F', '0', '1', 'fleet:task:predicted:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3043', '预测维修任务导出', '2012', '4', '#', '', 'F', '0', '1', 'fleet:task:predicted:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3044', '预测维修任务导入', '2012', '5', '#', '', 'F', '0', '1', 'fleet:task:predicted:import', '#', 'admin', sysdate(), '', null, '');

-- 一类非例行维修需求 按钮
insert into sys_menu values('3050', '一类非例行查询', '2013', '1', '#', '', 'F', '0', '1', 'fleet:task:nonroutine1:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3051', '一类非例行新增', '2013', '2', '#', '', 'F', '0', '1', 'fleet:task:nonroutine1:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3052', '一类非例行删除', '2013', '3', '#', '', 'F', '0', '1', 'fleet:task:nonroutine1:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3053', '一类非例行导出', '2013', '4', '#', '', 'F', '0', '1', 'fleet:task:nonroutine1:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3054', '一类非例行导入', '2013', '5', '#', '', 'F', '0', '1', 'fleet:task:nonroutine1:import', '#', 'admin', sysdate(), '', null, '');

-- 二类非例行维修需求 按钮
insert into sys_menu values('3060', '二类非例行查询', '2014', '1', '#', '', 'F', '0', '1', 'fleet:task:nonroutine2:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3061', '二类非例行新增', '2014', '2', '#', '', 'F', '0', '1', 'fleet:task:nonroutine2:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3062', '二类非例行删除', '2014', '3', '#', '', 'F', '0', '1', 'fleet:task:nonroutine2:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3063', '二类非例行导出', '2014', '4', '#', '', 'F', '0', '1', 'fleet:task:nonroutine2:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3064', '二类非例行导入', '2014', '5', '#', '', 'F', '0', '1', 'fleet:task:nonroutine2:import', '#', 'admin', sysdate(), '', null, '');

-- 机队生产方案动态规划 按钮
insert into sys_menu values('3070', '生产方案查询', '2020', '1', '#', '', 'F', '0', '1', 'fleet:dynamic:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3071', '生产方案新增', '2020', '2', '#', '', 'F', '0', '1', 'fleet:dynamic:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3072', '生产方案删除', '2020', '3', '#', '', 'F', '0', '1', 'fleet:dynamic:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3073', '生产方案导出', '2020', '4', '#', '', 'F', '0', '1', 'fleet:dynamic:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3074', '生产方案导入', '2020', '5', '#', '', 'F', '0', '1', 'fleet:dynamic:import', '#', 'admin', sysdate(), '', null, '');

-- 机队生成计划甘特图 按钮
insert into sys_menu values('3080', '甘特图查询', '2031', '1', '#', '', 'F', '0', '1', 'fleet:scheme:gantt:list', '#', 'admin', sysdate(), '', null, '');

-- 机队维修计划调度 按钮
insert into sys_menu values('3090', '维修计划调度查询', '2032', '1', '#', '', 'F', '0', '1', 'fleet:scheme:dispatch:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3091', '维修计划调度编辑', '2032', '2', '#', '', 'F', '0', '1', 'fleet:scheme:dispatch:edit', '#', 'admin', sysdate(), '', null, '');

-- 机队评估指标 按钮
insert into sys_menu values('3100', '评估指标查询', '2033', '1', '#', '', 'F', '0', '1', 'fleet:scheme:eval:list', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3101', '评估指标新增', '2033', '2', '#', '', 'F', '0', '1', 'fleet:scheme:eval:add', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3102', '评估指标删除', '2033', '3', '#', '', 'F', '0', '1', 'fleet:scheme:eval:remove', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3103', '评估指标导出', '2033', '4', '#', '', 'F', '0', '1', 'fleet:scheme:eval:export', '#', 'admin', sysdate(), '', null, '');
insert into sys_menu values('3104', '评估指标导入', '2033', '5', '#', '', 'F', '0', '1', 'fleet:scheme:eval:import', '#', 'admin', sysdate(), '', null, '');
