function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Add */
	this.urlHashMap["motor_dtf_antiwindup:79"] = "DT.v:202";
	/* <S1>/Add1 */
	this.urlHashMap["motor_dtf_antiwindup:83"] = "DT.v:209";
	/* <S1>/Add2 */
	this.urlHashMap["motor_dtf_antiwindup:119"] = "DT.v:156";
	/* <S1>/Add3 */
	this.urlHashMap["motor_dtf_antiwindup:120"] = "DT.v:145";
	/* <S1>/Discrete
Transfer Fcn2 */
	this.urlHashMap["motor_dtf_antiwindup:99"] = "DT.v:256";
	/* <S1>/Discrete-Time
Integrator */
	this.urlHashMap["motor_dtf_antiwindup:69"] = "DT.v:234,235,236,237,238,239,240,241,242,243,244";
	/* <S1>/Discrete-Time
Integrator1 */
	this.urlHashMap["motor_dtf_antiwindup:91"] = "DT.v:176,177,178,179,180,181,182,183,184,185,186";
	/* <S1>/Product */
	this.urlHashMap["motor_dtf_antiwindup:82"] = "DT.v:205,206";
	/* <S1>/Product1 */
	this.urlHashMap["motor_dtf_antiwindup:84"] = "DT.v:152,153";
	/* <S1>/Product2 */
	this.urlHashMap["motor_dtf_antiwindup:123"] = "DT.v:148,149";
	/* <S1>/Product3 */
	this.urlHashMap["motor_dtf_antiwindup:132"] = "DT.v:118";
	/* <S1>/Saturation */
	this.urlHashMap["motor_dtf_antiwindup:116"] = "DT.v:212,213,214";
	/* <S1>/Unit Delay */
	this.urlHashMap["motor_dtf_antiwindup:97"] = "DT.v:189,190,191,192,193,194,195,196,197,198,199";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "motor_dtf_antiwindup"};
	this.sidHashMap["motor_dtf_antiwindup"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/SP"] = {sid: "motor_dtf_antiwindup:40"};
	this.sidHashMap["motor_dtf_antiwindup:40"] = {rtwname: "<S1>/SP"};
	this.rtwnameHashMap["<S1>/kp"] = {sid: "motor_dtf_antiwindup:77"};
	this.sidHashMap["motor_dtf_antiwindup:77"] = {rtwname: "<S1>/kp"};
	this.rtwnameHashMap["<S1>/ti"] = {sid: "motor_dtf_antiwindup:78"};
	this.sidHashMap["motor_dtf_antiwindup:78"] = {rtwname: "<S1>/ti"};
	this.rtwnameHashMap["<S1>/Add"] = {sid: "motor_dtf_antiwindup:79"};
	this.sidHashMap["motor_dtf_antiwindup:79"] = {rtwname: "<S1>/Add"};
	this.rtwnameHashMap["<S1>/Add1"] = {sid: "motor_dtf_antiwindup:83"};
	this.sidHashMap["motor_dtf_antiwindup:83"] = {rtwname: "<S1>/Add1"};
	this.rtwnameHashMap["<S1>/Add2"] = {sid: "motor_dtf_antiwindup:119"};
	this.sidHashMap["motor_dtf_antiwindup:119"] = {rtwname: "<S1>/Add2"};
	this.rtwnameHashMap["<S1>/Add3"] = {sid: "motor_dtf_antiwindup:120"};
	this.sidHashMap["motor_dtf_antiwindup:120"] = {rtwname: "<S1>/Add3"};
	this.rtwnameHashMap["<S1>/Discrete Transfer Fcn2"] = {sid: "motor_dtf_antiwindup:99"};
	this.sidHashMap["motor_dtf_antiwindup:99"] = {rtwname: "<S1>/Discrete Transfer Fcn2"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator"] = {sid: "motor_dtf_antiwindup:69"};
	this.sidHashMap["motor_dtf_antiwindup:69"] = {rtwname: "<S1>/Discrete-Time Integrator"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator1"] = {sid: "motor_dtf_antiwindup:91"};
	this.sidHashMap["motor_dtf_antiwindup:91"] = {rtwname: "<S1>/Discrete-Time Integrator1"};
	this.rtwnameHashMap["<S1>/Product"] = {sid: "motor_dtf_antiwindup:82"};
	this.sidHashMap["motor_dtf_antiwindup:82"] = {rtwname: "<S1>/Product"};
	this.rtwnameHashMap["<S1>/Product1"] = {sid: "motor_dtf_antiwindup:84"};
	this.sidHashMap["motor_dtf_antiwindup:84"] = {rtwname: "<S1>/Product1"};
	this.rtwnameHashMap["<S1>/Product2"] = {sid: "motor_dtf_antiwindup:123"};
	this.sidHashMap["motor_dtf_antiwindup:123"] = {rtwname: "<S1>/Product2"};
	this.rtwnameHashMap["<S1>/Product3"] = {sid: "motor_dtf_antiwindup:132"};
	this.sidHashMap["motor_dtf_antiwindup:132"] = {rtwname: "<S1>/Product3"};
	this.rtwnameHashMap["<S1>/Saturation"] = {sid: "motor_dtf_antiwindup:116"};
	this.sidHashMap["motor_dtf_antiwindup:116"] = {rtwname: "<S1>/Saturation"};
	this.rtwnameHashMap["<S1>/Unit Delay"] = {sid: "motor_dtf_antiwindup:97"};
	this.sidHashMap["motor_dtf_antiwindup:97"] = {rtwname: "<S1>/Unit Delay"};
	this.rtwnameHashMap["<S1>/PV"] = {sid: "motor_dtf_antiwindup:64"};
	this.sidHashMap["motor_dtf_antiwindup:64"] = {rtwname: "<S1>/PV"};
	this.rtwnameHashMap["<S1>/MV"] = {sid: "motor_dtf_antiwindup:80"};
	this.sidHashMap["motor_dtf_antiwindup:80"] = {rtwname: "<S1>/MV"};
	this.rtwnameHashMap["<S1>/i_action"] = {sid: "motor_dtf_antiwindup:125"};
	this.sidHashMap["motor_dtf_antiwindup:125"] = {rtwname: "<S1>/i_action"};
	this.rtwnameHashMap["<S1>/p_action"] = {sid: "motor_dtf_antiwindup:134"};
	this.sidHashMap["motor_dtf_antiwindup:134"] = {rtwname: "<S1>/p_action"};
	this.rtwnameHashMap["<S1>/error"] = {sid: "motor_dtf_antiwindup:136"};
	this.sidHashMap["motor_dtf_antiwindup:136"] = {rtwname: "<S1>/error"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
