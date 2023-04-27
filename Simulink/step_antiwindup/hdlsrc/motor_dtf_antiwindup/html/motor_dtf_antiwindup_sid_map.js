function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["motor_dtf_antiwindup:40"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:77"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:78"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:79"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:83"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:119"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:120"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:99"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:69"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:91"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:82"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:84"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:123"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:132"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:116"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:97"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:64"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:80"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:125"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:134"] = "motor_dtf_antiwindup:39";
    this.sidParentMap["motor_dtf_antiwindup:136"] = "motor_dtf_antiwindup:39";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
