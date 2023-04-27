function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Add */
	this.urlHashMap["motor_dtf:79"] = "DT.v:170";
	/* <S1>/Add1 */
	this.urlHashMap["motor_dtf:83"] = "DT.v:177";
	/* <S1>/Discrete
Transfer Fcn1 */
	this.urlHashMap["motor_dtf:67"] = "DT.v:214";
	/* <S1>/Discrete-Time
Integrator */
	this.urlHashMap["motor_dtf:69"] = "DT.v:184,185,186,187,188,189,190,191,192,193,194";
	/* <S1>/Discrete-Time
Integrator1 */
	this.urlHashMap["motor_dtf:91"] = "DT.v:157,158,159,160,161,162,163,164,165,166,167";
	/* <S1>/Product */
	this.urlHashMap["motor_dtf:82"] = "DT.v:173,174";
	/* <S1>/Product1 */
	this.urlHashMap["motor_dtf:84"] = "DT.v:149,150";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "motor_dtf"};
	this.sidHashMap["motor_dtf"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/SP"] = {sid: "motor_dtf:40"};
	this.sidHashMap["motor_dtf:40"] = {rtwname: "<S1>/SP"};
	this.rtwnameHashMap["<S1>/kp"] = {sid: "motor_dtf:77"};
	this.sidHashMap["motor_dtf:77"] = {rtwname: "<S1>/kp"};
	this.rtwnameHashMap["<S1>/ti"] = {sid: "motor_dtf:78"};
	this.sidHashMap["motor_dtf:78"] = {rtwname: "<S1>/ti"};
	this.rtwnameHashMap["<S1>/Add"] = {sid: "motor_dtf:79"};
	this.sidHashMap["motor_dtf:79"] = {rtwname: "<S1>/Add"};
	this.rtwnameHashMap["<S1>/Add1"] = {sid: "motor_dtf:83"};
	this.sidHashMap["motor_dtf:83"] = {rtwname: "<S1>/Add1"};
	this.rtwnameHashMap["<S1>/Discrete Transfer Fcn1"] = {sid: "motor_dtf:67"};
	this.sidHashMap["motor_dtf:67"] = {rtwname: "<S1>/Discrete Transfer Fcn1"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator"] = {sid: "motor_dtf:69"};
	this.sidHashMap["motor_dtf:69"] = {rtwname: "<S1>/Discrete-Time Integrator"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator1"] = {sid: "motor_dtf:91"};
	this.sidHashMap["motor_dtf:91"] = {rtwname: "<S1>/Discrete-Time Integrator1"};
	this.rtwnameHashMap["<S1>/Product"] = {sid: "motor_dtf:82"};
	this.sidHashMap["motor_dtf:82"] = {rtwname: "<S1>/Product"};
	this.rtwnameHashMap["<S1>/Product1"] = {sid: "motor_dtf:84"};
	this.sidHashMap["motor_dtf:84"] = {rtwname: "<S1>/Product1"};
	this.rtwnameHashMap["<S1>/PV"] = {sid: "motor_dtf:64"};
	this.sidHashMap["motor_dtf:64"] = {rtwname: "<S1>/PV"};
	this.rtwnameHashMap["<S1>/MV"] = {sid: "motor_dtf:80"};
	this.sidHashMap["motor_dtf:80"] = {rtwname: "<S1>/MV"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
