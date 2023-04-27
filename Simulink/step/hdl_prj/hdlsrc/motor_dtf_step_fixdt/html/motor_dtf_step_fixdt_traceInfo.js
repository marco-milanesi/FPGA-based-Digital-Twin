function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Add */
	this.urlHashMap["motor_dtf_step_fixdt:79"] = "DT.v:174";
	/* <S1>/Add1 */
	this.urlHashMap["motor_dtf_step_fixdt:83"] = "DT.v:181";
	/* <S1>/Discrete
Transfer Fcn2 */
	this.urlHashMap["motor_dtf_step_fixdt:99"] = "DT.v:223";
	/* <S1>/Discrete-Time
Integrator */
	this.urlHashMap["motor_dtf_step_fixdt:69"] = "DT.v:201,202,203,204,205,206,207,208,209,210,211";
	/* <S1>/Discrete-Time
Integrator1 */
	this.urlHashMap["motor_dtf_step_fixdt:91"] = "DT.v:148,149,150,151,152,153,154,155,156,157,158";
	/* <S1>/Product */
	this.urlHashMap["motor_dtf_step_fixdt:82"] = "DT.v:177,178";
	/* <S1>/Product1 */
	this.urlHashMap["motor_dtf_step_fixdt:84"] = "DT.v:127,128";
	/* <S1>/Unit Delay */
	this.urlHashMap["motor_dtf_step_fixdt:97"] = "DT.v:161,162,163,164,165,166,167,168,169,170,171";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "motor_dtf_step_fixdt"};
	this.sidHashMap["motor_dtf_step_fixdt"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/SP"] = {sid: "motor_dtf_step_fixdt:40"};
	this.sidHashMap["motor_dtf_step_fixdt:40"] = {rtwname: "<S1>/SP"};
	this.rtwnameHashMap["<S1>/kp"] = {sid: "motor_dtf_step_fixdt:77"};
	this.sidHashMap["motor_dtf_step_fixdt:77"] = {rtwname: "<S1>/kp"};
	this.rtwnameHashMap["<S1>/ti"] = {sid: "motor_dtf_step_fixdt:78"};
	this.sidHashMap["motor_dtf_step_fixdt:78"] = {rtwname: "<S1>/ti"};
	this.rtwnameHashMap["<S1>/Add"] = {sid: "motor_dtf_step_fixdt:79"};
	this.sidHashMap["motor_dtf_step_fixdt:79"] = {rtwname: "<S1>/Add"};
	this.rtwnameHashMap["<S1>/Add1"] = {sid: "motor_dtf_step_fixdt:83"};
	this.sidHashMap["motor_dtf_step_fixdt:83"] = {rtwname: "<S1>/Add1"};
	this.rtwnameHashMap["<S1>/Discrete Transfer Fcn2"] = {sid: "motor_dtf_step_fixdt:99"};
	this.sidHashMap["motor_dtf_step_fixdt:99"] = {rtwname: "<S1>/Discrete Transfer Fcn2"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator"] = {sid: "motor_dtf_step_fixdt:69"};
	this.sidHashMap["motor_dtf_step_fixdt:69"] = {rtwname: "<S1>/Discrete-Time Integrator"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator1"] = {sid: "motor_dtf_step_fixdt:91"};
	this.sidHashMap["motor_dtf_step_fixdt:91"] = {rtwname: "<S1>/Discrete-Time Integrator1"};
	this.rtwnameHashMap["<S1>/Product"] = {sid: "motor_dtf_step_fixdt:82"};
	this.sidHashMap["motor_dtf_step_fixdt:82"] = {rtwname: "<S1>/Product"};
	this.rtwnameHashMap["<S1>/Product1"] = {sid: "motor_dtf_step_fixdt:84"};
	this.sidHashMap["motor_dtf_step_fixdt:84"] = {rtwname: "<S1>/Product1"};
	this.rtwnameHashMap["<S1>/Unit Delay"] = {sid: "motor_dtf_step_fixdt:97"};
	this.sidHashMap["motor_dtf_step_fixdt:97"] = {rtwname: "<S1>/Unit Delay"};
	this.rtwnameHashMap["<S1>/PV"] = {sid: "motor_dtf_step_fixdt:64"};
	this.sidHashMap["motor_dtf_step_fixdt:64"] = {rtwname: "<S1>/PV"};
	this.rtwnameHashMap["<S1>/MV"] = {sid: "motor_dtf_step_fixdt:80"};
	this.sidHashMap["motor_dtf_step_fixdt:80"] = {rtwname: "<S1>/MV"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
