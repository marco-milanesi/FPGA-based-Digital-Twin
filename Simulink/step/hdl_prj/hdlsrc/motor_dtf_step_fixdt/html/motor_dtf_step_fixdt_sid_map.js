function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["motor_dtf_step_fixdt:40"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:77"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:78"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:79"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:83"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:99"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:69"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:91"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:82"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:84"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:97"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:64"] = "motor_dtf_step_fixdt:39";
    this.sidParentMap["motor_dtf_step_fixdt:80"] = "motor_dtf_step_fixdt:39";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
