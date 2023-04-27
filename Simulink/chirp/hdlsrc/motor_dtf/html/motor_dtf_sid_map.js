function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["motor_dtf:40"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:77"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:78"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:79"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:83"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:67"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:69"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:91"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:82"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:84"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:64"] = "motor_dtf:39";
    this.sidParentMap["motor_dtf:80"] = "motor_dtf:39";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
