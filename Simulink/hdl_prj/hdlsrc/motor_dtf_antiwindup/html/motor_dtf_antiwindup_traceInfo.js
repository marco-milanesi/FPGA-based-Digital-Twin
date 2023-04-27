function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <Root>/Constant */
	this.urlHashMap["motor_dtf_antiwindup:144"] = "msg=&block=motor_dtf_antiwindup:144";
	/* <Root>/DT */
	this.urlHashMap["motor_dtf_antiwindup:39"] = "msg=&block=motor_dtf_antiwindup:39";
	/* <Root>/Kp */
	this.urlHashMap["motor_dtf_antiwindup:86"] = "msg=&block=motor_dtf_antiwindup:86";
	/* <Root>/Scope */
	this.urlHashMap["motor_dtf_antiwindup:135"] = "msg=&block=motor_dtf_antiwindup:135";
	/* <Root>/Scope1 */
	this.urlHashMap["motor_dtf_antiwindup:129"] = "msg=&block=motor_dtf_antiwindup:129";
	/* <Root>/Ti */
	this.urlHashMap["motor_dtf_antiwindup:87"] = "msg=&block=motor_dtf_antiwindup:87";
	/* <S1>/Add */
	this.urlHashMap["motor_dtf_antiwindup:79"] = "msg=&block=motor_dtf_antiwindup:79";
	/* <S1>/Add1 */
	this.urlHashMap["motor_dtf_antiwindup:83"] = "msg=&block=motor_dtf_antiwindup:83";
	/* <S1>/Add2 */
	this.urlHashMap["motor_dtf_antiwindup:119"] = "msg=&block=motor_dtf_antiwindup:119";
	/* <S1>/Add3 */
	this.urlHashMap["motor_dtf_antiwindup:120"] = "msg=&block=motor_dtf_antiwindup:120";
	/* <S1>/Data Type Conversion1 */
	this.urlHashMap["motor_dtf_antiwindup:138"] = "msg=&block=motor_dtf_antiwindup:138";
	/* <S1>/Data Type Conversion2 */
	this.urlHashMap["motor_dtf_antiwindup:139"] = "msg=&block=motor_dtf_antiwindup:139";
	/* <S1>/Data Type Conversion3 */
	this.urlHashMap["motor_dtf_antiwindup:137"] = "msg=&block=motor_dtf_antiwindup:137";
	/* <S1>/Data Type Conversion4 */
	this.urlHashMap["motor_dtf_antiwindup:140"] = "msg=&block=motor_dtf_antiwindup:140";
	/* <S1>/Data Type Conversion5 */
	this.urlHashMap["motor_dtf_antiwindup:142"] = "msg=&block=motor_dtf_antiwindup:142";
	/* <S1>/Discrete
Transfer Fcn2 */
	this.urlHashMap["motor_dtf_antiwindup:99"] = "msg=&block=motor_dtf_antiwindup:99";
	/* <S1>/Discrete-Time
Integrator */
	this.urlHashMap["motor_dtf_antiwindup:69"] = "msg=&block=motor_dtf_antiwindup:69";
	/* <S1>/Discrete-Time
Integrator1 */
	this.urlHashMap["motor_dtf_antiwindup:91"] = "msg=&block=motor_dtf_antiwindup:91";
	/* <S1>/Product */
	this.urlHashMap["motor_dtf_antiwindup:82"] = "msg=&block=motor_dtf_antiwindup:82";
	/* <S1>/Product1 */
	this.urlHashMap["motor_dtf_antiwindup:84"] = "msg=&block=motor_dtf_antiwindup:84";
	/* <S1>/Product2 */
	this.urlHashMap["motor_dtf_antiwindup:123"] = "msg=&block=motor_dtf_antiwindup:123";
	/* <S1>/Product3 */
	this.urlHashMap["motor_dtf_antiwindup:132"] = "msg=&block=motor_dtf_antiwindup:132";
	/* <S1>/Saturation */
	this.urlHashMap["motor_dtf_antiwindup:116"] = "msg=&block=motor_dtf_antiwindup:116";
	/* <S1>/Unit Delay */
	this.urlHashMap["motor_dtf_antiwindup:97"] = "msg=&block=motor_dtf_antiwindup:97";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "motor_dtf_antiwindup"};
	this.sidHashMap["motor_dtf_antiwindup"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<Root>/Constant"] = {sid: "motor_dtf_antiwindup:144"};
	this.sidHashMap["motor_dtf_antiwindup:144"] = {rtwname: "<Root>/Constant"};
	this.rtwnameHashMap["<Root>/DT"] = {sid: "motor_dtf_antiwindup:39"};
	this.sidHashMap["motor_dtf_antiwindup:39"] = {rtwname: "<Root>/DT"};
	this.rtwnameHashMap["<Root>/Kp"] = {sid: "motor_dtf_antiwindup:86"};
	this.sidHashMap["motor_dtf_antiwindup:86"] = {rtwname: "<Root>/Kp"};
	this.rtwnameHashMap["<Root>/Scope"] = {sid: "motor_dtf_antiwindup:135"};
	this.sidHashMap["motor_dtf_antiwindup:135"] = {rtwname: "<Root>/Scope"};
	this.rtwnameHashMap["<Root>/Scope1"] = {sid: "motor_dtf_antiwindup:129"};
	this.sidHashMap["motor_dtf_antiwindup:129"] = {rtwname: "<Root>/Scope1"};
	this.rtwnameHashMap["<Root>/Ti"] = {sid: "motor_dtf_antiwindup:87"};
	this.sidHashMap["motor_dtf_antiwindup:87"] = {rtwname: "<Root>/Ti"};
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
	this.rtwnameHashMap["<S1>/Data Type Conversion1"] = {sid: "motor_dtf_antiwindup:138"};
	this.sidHashMap["motor_dtf_antiwindup:138"] = {rtwname: "<S1>/Data Type Conversion1"};
	this.rtwnameHashMap["<S1>/Data Type Conversion2"] = {sid: "motor_dtf_antiwindup:139"};
	this.sidHashMap["motor_dtf_antiwindup:139"] = {rtwname: "<S1>/Data Type Conversion2"};
	this.rtwnameHashMap["<S1>/Data Type Conversion3"] = {sid: "motor_dtf_antiwindup:137"};
	this.sidHashMap["motor_dtf_antiwindup:137"] = {rtwname: "<S1>/Data Type Conversion3"};
	this.rtwnameHashMap["<S1>/Data Type Conversion4"] = {sid: "motor_dtf_antiwindup:140"};
	this.sidHashMap["motor_dtf_antiwindup:140"] = {rtwname: "<S1>/Data Type Conversion4"};
	this.rtwnameHashMap["<S1>/Data Type Conversion5"] = {sid: "motor_dtf_antiwindup:142"};
	this.sidHashMap["motor_dtf_antiwindup:142"] = {rtwname: "<S1>/Data Type Conversion5"};
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
	this.rtwnameHashMap["<S1>/p_action"] = {sid: "motor_dtf_antiwindup:134"};
	this.sidHashMap["motor_dtf_antiwindup:134"] = {rtwname: "<S1>/p_action"};
	this.rtwnameHashMap["<S1>/error"] = {sid: "motor_dtf_antiwindup:136"};
	this.sidHashMap["motor_dtf_antiwindup:136"] = {rtwname: "<S1>/error"};
	this.rtwnameHashMap["<S1>/i_action"] = {sid: "motor_dtf_antiwindup:141"};
	this.sidHashMap["motor_dtf_antiwindup:141"] = {rtwname: "<S1>/i_action"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
