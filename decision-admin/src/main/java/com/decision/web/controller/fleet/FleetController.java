package com.decision.web.controller.fleet;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 机队管理
 * 
 * @author Decision
 */
@Controller
@RequestMapping("/fleet")
public class FleetController
{
    private String prefix = "fleet";

    // ==================== 机队飞行计划 ====================
    @RequiresPermissions("fleet:flightplan:schedule:view")
    @GetMapping("/flightplan/schedule")
    public String schedule()
    {
        return prefix + "/flightplan/schedule";
    }

    @RequiresPermissions("fleet:flightplan:mpd:view")
    @GetMapping("/flightplan/mpd")
    public String mpd()
    {
        return prefix + "/flightplan/mpd";
    }

    @RequiresPermissions("fleet:flightplan:maintenance:view")
    @GetMapping("/flightplan/maintenance")
    public String maintenance()
    {
        return prefix + "/flightplan/maintenance";
    }

    // ==================== 机队飞行与维修任务 ====================
    @RequiresPermissions("fleet:task:planned:view")
    @GetMapping("/task/planned")
    public String planned()
    {
        return prefix + "/task/planned";
    }

    @RequiresPermissions("fleet:task:predicted:view")
    @GetMapping("/task/predicted")
    public String predicted()
    {
        return prefix + "/task/predicted";
    }

    @RequiresPermissions("fleet:task:nonroutine1:view")
    @GetMapping("/task/nonroutine1")
    public String nonroutine1()
    {
        return prefix + "/task/nonroutine1";
    }

    @RequiresPermissions("fleet:task:nonroutine2:view")
    @GetMapping("/task/nonroutine2")
    public String nonroutine2()
    {
        return prefix + "/task/nonroutine2";
    }

    // ==================== 机队生产方案动态规划 ====================
    @RequiresPermissions("fleet:dynamic:view")
    @GetMapping("/dynamic")
    public String dynamic()
    {
        return prefix + "/dynamic/plan";
    }

    // ==================== 机队飞行与维修方案 ====================
    @RequiresPermissions("fleet:scheme:gantt:view")
    @GetMapping("/scheme/gantt")
    public String gantt()
    {
        return prefix + "/scheme/gantt";
    }

    @RequiresPermissions("fleet:scheme:dispatch:view")
    @GetMapping("/scheme/dispatch")
    public String dispatch()
    {
        return prefix + "/scheme/dispatch";
    }

    @RequiresPermissions("fleet:scheme:eval:view")
    @GetMapping("/scheme/eval")
    public String eval()
    {
        return prefix + "/scheme/eval";
    }
}
