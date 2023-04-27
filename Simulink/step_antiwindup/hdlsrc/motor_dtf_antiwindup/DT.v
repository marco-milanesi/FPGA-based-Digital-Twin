// -------------------------------------------------------------
// 
// File Name: hdlsrc\motor_dtf_antiwindup\DT.v
// Created: 2023-04-27 07:07:46
// 
// Generated by MATLAB 9.11 and HDL Coder 3.19
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.001
// Target subsystem base rate: 0.001
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.001
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// PV                            ce_out        0.001
// MV                            ce_out        0.001
// p_action                      ce_out        0.001
// error                         ce_out        0.001
// i_action                      ce_out        0.001
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DT
// Source Path: motor_dtf_antiwindup/DT
// Hierarchy Level: 0
// 
// Simulink model description for motor_dtf_antiwindup:
// 
// Symmetric FIR Filter
// This example shows how to use HDL Coder(TM) to check, generate,
// and verify HDL for a fixed-point symmetric FIR filter. 
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DT
          (clk,
           reset_x,
           clk_enable,
           SP,
           kp,
           ti,
           ce_out,
           PV,
           MV,
           p_action,
           error,
           i_action);


  input   clk;
  input   reset_x;
  input   clk_enable;
  input   signed [63:0] SP;  // sfix64_En32
  input   signed [63:0] kp;  // sfix64_En32
  input   signed [63:0] ti;  // sfix64_En32
  output  ce_out;
  output  signed [9:0] PV;  // sfix10
  output  signed [9:0] MV;  // sfix10
  output  signed [9:0] p_action;  // sfix10
  output  signed [9:0] error;  // sfix10
  output  signed [9:0] i_action;  // sfix10


  wire enb;
  wire signed [127:0] Product3_out1;  // sfix128_En64
  reg signed [63:0] s_state_out1;  // sfix64_En32
  wire signed [127:0] nume_gain1_mul_temp;  // sfix128_En64
  wire signed [63:0] s_nume_gain1;  // sfix64_En32
  wire signed [63:0] s_denom_acc_out1;  // sfix64_En32
  wire signed [127:0] denom_gain1_mul_temp;  // sfix128_En64
  wire signed [63:0] s_denom_gain1;  // sfix64_En32
  wire signed [63:0] Saturation_out1;  // sfix64_En32
  wire signed [63:0] Add1_out1;  // sfix64_En32
  wire signed [63:0] Add3_out1;  // sfix64_En32
  wire signed [127:0] Product2_mul_temp;  // sfix128_En64
  wire signed [63:0] Product2_out1;  // sfix64_En32
  wire signed [63:0] Add_out1;  // sfix64_En32
  wire signed [191:0] Product1_mul_temp;  // sfix192_En96
  wire signed [63:0] Product1_out1;  // sfix64_En32
  wire signed [63:0] Add2_out1;  // sfix64_En32
  wire signed [63:0] Discrete_Time_Integrator1_indtc;  // sfix64
  wire signed [127:0] gain_mul_temp;  // sfix128_En60
  wire signed [63:0] Discrete_Time_Integrator1_u_gain;  // sfix64
  wire signed [63:0] Discrete_Time_Integrator1_u_dtc;  // sfix64_En32
  reg signed [63:0] Discrete_Time_Integrator1_x_reg;  // sfix64_En32
  wire signed [63:0] Discrete_Time_Integrator1_u_add;  // sfix64_En32
  wire signed [63:0] s_nume_acc_out1;  // sfix64_En32
  reg signed [63:0] Unit_Delay_out1;  // sfix64_En32
  wire signed [127:0] Product_mul_temp;  // sfix128_En64
  wire signed [63:0] Product_out1;  // sfix64_En32
  wire signed [63:0] Discrete_Time_Integrator_indtc;  // sfix64
  wire signed [127:0] gain_mul_temp_1;  // sfix128_En60
  wire signed [63:0] Discrete_Time_Integrator_u_gain;  // sfix64
  wire signed [63:0] Discrete_Time_Integrator_u_dtc;  // sfix64_En32
  reg signed [63:0] Discrete_Time_Integrator_x_reg;  // sfix64_En32
  wire signed [63:0] Discrete_Time_Integrator_u_add;  // sfix64_En32
  wire signed [127:0] nume_gain_b0_mul_temp;  // sfix128_En64
  wire signed [63:0] s_nume_gain_b0;  // sfix64_En32
  wire signed [9:0] SP_1;  // sfix10
  wire signed [9:0] SP_2;  // sfix10
  wire signed [9:0] SP_3;  // sfix10
  wire signed [9:0] SP_4;  // sfix10
  wire signed [9:0] SP_5;  // sfix10


  assign enb = clk_enable;

  assign Product3_out1 = kp * ti;


  assign nume_gain1_mul_temp = 64'sh000000000147AE14 * s_state_out1;
  assign s_nume_gain1 = nume_gain1_mul_temp[95:32];



  always @(posedge clk)
    begin : s_state_out1_1_process
      if (reset_x == 1'b1) begin
        s_state_out1 <= 64'sh0000000000000000;
      end
      else begin
        if (enb) begin
          s_state_out1 <= s_denom_acc_out1;
        end
      end
    end



  assign denom_gain1_mul_temp = 64'shFFFFFFFF028F5C29 * s_state_out1;
  assign s_denom_gain1 = denom_gain1_mul_temp[95:32];



  assign Add3_out1 = Saturation_out1 - Add1_out1;


  assign Product2_mul_temp = Add3_out1 * ti;
  assign Product2_out1 = Product2_mul_temp[95:32];


  assign Product1_mul_temp = Add_out1 * Product3_out1;
  assign Product1_out1 = Product1_mul_temp[127:64];


  assign Add2_out1 = Product1_out1 + Product2_out1;


  assign Discrete_Time_Integrator1_indtc = Add2_out1;



  assign gain_mul_temp = 64'sh0004189374BC6A7F * Discrete_Time_Integrator1_indtc;
  assign Discrete_Time_Integrator1_u_gain = gain_mul_temp[123:60];



  assign Discrete_Time_Integrator1_u_dtc = Discrete_Time_Integrator1_u_gain;



  assign Discrete_Time_Integrator1_u_add = Discrete_Time_Integrator1_x_reg + Discrete_Time_Integrator1_u_dtc;



  always @(posedge clk)
    begin : Discrete_Time_Integrator1_reg_process
      if (reset_x == 1'b1) begin
        Discrete_Time_Integrator1_x_reg <= 64'sh0000000000000000;
      end
      else begin
        if (enb) begin
          Discrete_Time_Integrator1_x_reg <= Discrete_Time_Integrator1_u_add;
        end
      end
    end


  always @(posedge clk)
    begin : Unit_Delay_process
      if (reset_x == 1'b1) begin
        Unit_Delay_out1 <= 64'sh0000000000000000;
      end
      else begin
        if (enb) begin
          Unit_Delay_out1 <= s_nume_acc_out1;
        end
      end
    end


  assign Add_out1 = SP - Unit_Delay_out1;


  assign Product_mul_temp = Add_out1 * kp;
  assign Product_out1 = Product_mul_temp[95:32];


  assign Add1_out1 = Product_out1 + Discrete_Time_Integrator1_x_reg;


  assign Saturation_out1 = (Add1_out1 > 64'sh000000FF00000000 ? 64'sh000000FF00000000 :
              (Add1_out1 < 64'shFFFFFF0100000000 ? 64'shFFFFFF0100000000 :
              Add1_out1));


  assign Discrete_Time_Integrator_indtc = Saturation_out1;



  assign gain_mul_temp_1 = 64'sh0004189374BC6A7F * Discrete_Time_Integrator_indtc;
  assign Discrete_Time_Integrator_u_gain = gain_mul_temp_1[123:60];



  assign Discrete_Time_Integrator_u_dtc = Discrete_Time_Integrator_u_gain;



  assign Discrete_Time_Integrator_u_add = Discrete_Time_Integrator_x_reg + Discrete_Time_Integrator_u_dtc;



  always @(posedge clk)
    begin : Discrete_Time_Integrator_reg_process
      if (reset_x == 1'b1) begin
        Discrete_Time_Integrator_x_reg <= 64'sh0000000000000000;
      end
      else begin
        if (enb) begin
          Discrete_Time_Integrator_x_reg <= Discrete_Time_Integrator_u_add;
        end
      end
    end


  assign s_denom_acc_out1 = Discrete_Time_Integrator_x_reg - s_denom_gain1;



  assign nume_gain_b0_mul_temp = 64'sh000000000147AE14 * s_denom_acc_out1;
  assign s_nume_gain_b0 = nume_gain_b0_mul_temp[95:32];



  assign s_nume_acc_out1 = s_nume_gain_b0 + s_nume_gain1;


  assign SP_1 = s_nume_acc_out1[41:32];


  assign PV = SP_1;

  assign SP_2 = Saturation_out1[41:32];


  assign MV = SP_2;

  assign SP_3 = Product_out1[41:32];


  assign p_action = SP_3;

  assign SP_4 = Add_out1[41:32];


  assign error = SP_4;

  assign SP_5 = Discrete_Time_Integrator1_x_reg[41:32];


  assign i_action = SP_5;

  assign ce_out = clk_enable;

endmodule  // DT

