// -------------------------------------------------------------
// 
// File Name: hdlsrc\motor_dtf_antiwindup\DT_tb.v
// Created: 2023-04-27 07:53:13
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
// Module: DT_tb
// Source Path: 
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DT_tb;



  reg  clk;
  reg  reset_x;
  wire clk_enable;
  wire signed [63:0] rawData_SP;  // sfix64_En32
  wire signed [63:0] rawData_kp;  // sfix64_En32
  wire signed [63:0] rawData_ti;  // sfix64_En32
  wire i_action_done;  // ufix1
  wire rdEnb;
  wire i_action_done_enb;  // ufix1
  reg [16:0] PV_addr;  // ufix17
  wire i_action_lastAddr;  // ufix1
  wire resetn;
  reg  check5_done;  // ufix1
  wire error_done;  // ufix1
  wire error_done_enb;  // ufix1
  wire error_lastAddr;  // ufix1
  reg  check4_done;  // ufix1
  wire p_action_done;  // ufix1
  wire p_action_done_enb;  // ufix1
  wire p_action_lastAddr;  // ufix1
  reg  check3_done;  // ufix1
  wire MV_done;  // ufix1
  wire MV_done_enb;  // ufix1
  wire MV_lastAddr;  // ufix1
  reg  check2_done;  // ufix1
  wire PV_done;  // ufix1
  wire PV_done_enb;  // ufix1
  wire PV_active;  // ufix1
  reg signed [63:0] holdData_ti;  // sfix64_En32
  reg signed [63:0] ti_offset;  // sfix64_En32
  wire signed [63:0] ti_1;  // sfix64_En32
  reg signed [63:0] holdData_kp;  // sfix64_En32
  reg signed [63:0] kp_offset;  // sfix64_En32
  wire signed [63:0] kp_1;  // sfix64_En32
  reg signed [63:0] holdData_SP;  // sfix64_En32
  reg signed [63:0] SP_offset;  // sfix64_En32
  wire signed [63:0] SP_1;  // sfix64_En32
  wire snkDone;
  wire snkDonen;
  wire tb_enb;
  reg  tb_enb_delay;
  wire ce_out;
  wire signed [9:0] PV;  // sfix10
  wire signed [9:0] MV;  // sfix10
  wire signed [9:0] p_action;  // sfix10
  wire signed [9:0] error;  // sfix10
  wire signed [9:0] i_action;  // sfix10
  wire PV_enb;  // ufix1
  wire PV_lastAddr;  // ufix1
  reg  check1_done;  // ufix1
  wire [16:0] PV_addr_delay_1;  // ufix17
  reg signed [31:0] fp_PV_expected;  // sfix32
  reg signed [9:0] PV_expected;  // sfix10
  reg signed [31:0] status_PV_expected;  // sfix32
  wire signed [9:0] PV_ref;  // sfix10
  reg  PV_testFailure;  // ufix1
  wire [16:0] MV_addr_delay_1;  // ufix17
  reg signed [31:0] fp_MV_expected;  // sfix32
  reg signed [9:0] MV_expected;  // sfix10
  reg signed [31:0] status_MV_expected;  // sfix32
  wire signed [9:0] MV_ref;  // sfix10
  reg  MV_testFailure;  // ufix1
  wire [16:0] p_action_addr_delay_1;  // ufix17
  reg signed [31:0] fp_p_action_expected;  // sfix32
  reg signed [9:0] p_action_expected;  // sfix10
  reg signed [31:0] status_p_action_expected;  // sfix32
  wire signed [9:0] p_action_ref;  // sfix10
  reg  p_action_testFailure;  // ufix1
  wire [16:0] error_addr_delay_1;  // ufix17
  reg signed [31:0] fp_error_expected;  // sfix32
  reg signed [9:0] error_expected;  // sfix10
  reg signed [31:0] status_error_expected;  // sfix32
  wire signed [9:0] error_ref;  // sfix10
  reg  error_testFailure;  // ufix1
  wire [16:0] i_action_addr_delay_1;  // ufix17
  reg signed [31:0] fp_i_action_expected;  // sfix32
  reg signed [9:0] i_action_expected;  // sfix10
  reg signed [31:0] status_i_action_expected;  // sfix32
  wire signed [9:0] i_action_ref;  // sfix10
  reg  i_action_testFailure;  // ufix1
  wire testFailure;  // ufix1


  // Data source for SP
  assign rawData_SP = 64'sh0000003C00000000;



  // Data source for kp
  assign rawData_kp = 64'sh00000003CCCCCCCC;



  // Data source for ti
  assign rawData_ti = 64'sh0000000020C49BA5;



  assign i_action_done_enb = i_action_done & rdEnb;



  assign i_action_lastAddr = PV_addr >= 17'b11101010011000000;



  assign i_action_done = i_action_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk)
    begin : checkDone_5
      if (reset_x) begin
        check5_done <= 0;
      end
      else begin
        if (i_action_done_enb) begin
          check5_done <= i_action_done;
        end
      end
    end

  assign error_done_enb = error_done & rdEnb;



  assign error_lastAddr = PV_addr >= 17'b11101010011000000;



  assign error_done = error_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk)
    begin : checkDone_4
      if (reset_x) begin
        check4_done <= 0;
      end
      else begin
        if (error_done_enb) begin
          check4_done <= error_done;
        end
      end
    end

  assign p_action_done_enb = p_action_done & rdEnb;



  assign p_action_lastAddr = PV_addr >= 17'b11101010011000000;



  assign p_action_done = p_action_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk)
    begin : checkDone_3
      if (reset_x) begin
        check3_done <= 0;
      end
      else begin
        if (p_action_done_enb) begin
          check3_done <= p_action_done;
        end
      end
    end

  assign MV_done_enb = MV_done & rdEnb;



  assign MV_lastAddr = PV_addr >= 17'b11101010011000000;



  assign MV_done = MV_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk)
    begin : checkDone_2
      if (reset_x) begin
        check2_done <= 0;
      end
      else begin
        if (MV_done_enb) begin
          check2_done <= MV_done;
        end
      end
    end

  assign PV_done_enb = PV_done & rdEnb;



  assign PV_active = PV_addr != 17'b11101010011000000;



  // holdData reg for SP_1
  always @(posedge clk)
    begin : stimuli_SP_1
      if (reset_x) begin
        holdData_ti <= 64'bx;
      end
      else begin
        holdData_ti <= rawData_ti;
      end
    end

  always @(rawData_ti or rdEnb)
    begin : stimuli_SP_1_1
      if (rdEnb == 1'b0) begin
        ti_offset <= holdData_ti;
      end
      else begin
        ti_offset <= rawData_ti;
      end
    end

  assign #2 ti_1 = ti_offset;

  // holdData reg for SP
  always @(posedge clk)
    begin : stimuli_SP
      if (reset_x) begin
        holdData_kp <= 64'bx;
      end
      else begin
        holdData_kp <= rawData_kp;
      end
    end

  always @(rawData_kp or rdEnb)
    begin : stimuli_SP_2
      if (rdEnb == 1'b0) begin
        kp_offset <= holdData_kp;
      end
      else begin
        kp_offset <= rawData_kp;
      end
    end

  assign #2 kp_1 = kp_offset;

  // holdData reg for Setpoint_and_Process_Variable
  always @(posedge clk)
    begin : stimuli_Setpoint_and_Process_Variable
      if (reset_x) begin
        holdData_SP <= 64'bx;
      end
      else begin
        holdData_SP <= rawData_SP;
      end
    end

  always @(rawData_SP or rdEnb)
    begin : stimuli_Setpoint_and_Process_Variable_1
      if (rdEnb == 1'b0) begin
        SP_offset <= holdData_SP;
      end
      else begin
        SP_offset <= rawData_SP;
      end
    end

  assign #2 SP_1 = SP_offset;

  assign snkDonen =  ~ snkDone;



  assign resetn =  ~ reset_x;



  assign tb_enb = resetn & snkDonen;



  // Delay inside enable generation: register depth 1
  always @(posedge clk)
    begin : u_enable_delay
      if (reset_x) begin
        tb_enb_delay <= 0;
      end
      else begin
        tb_enb_delay <= tb_enb;
      end
    end

  assign rdEnb = (snkDone == 1'b0 ? tb_enb_delay :
              1'b0);



  assign #2 clk_enable = rdEnb;

  initial
    begin : reset_x_gen
      reset_x <= 1'b1;
      # (20);
      @ (posedge clk)
      # (2);
      reset_x <= 1'b0;
    end

  always 
    begin : clk_gen
      clk <= 1'b1;
      # (5);
      clk <= 1'b0;
      # (5);
      if (snkDone == 1'b1) begin
        clk <= 1'b1;
        # (5);
        clk <= 1'b0;
        # (5);
        $stop;
      end
    end

  DT u_DT (.clk(clk),
           .reset_x(reset_x),
           .clk_enable(clk_enable),
           .SP(SP_1),  // sfix64_En32
           .kp(kp_1),  // sfix64_En32
           .ti(ti_1),  // sfix64_En32
           .ce_out(ce_out),
           .PV(PV),  // sfix10
           .MV(MV),  // sfix10
           .p_action(p_action),  // sfix10
           .error(error),  // sfix10
           .i_action(i_action)  // sfix10
           );

  assign PV_enb = ce_out & PV_active;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 120000
  always @(posedge clk)
    begin : c_2_process
      if (reset_x == 1'b1) begin
        PV_addr <= 17'b00000000000000000;
      end
      else begin
        if (PV_enb) begin
          if (PV_addr >= 17'b11101010011000000) begin
            PV_addr <= 17'b00000000000000000;
          end
          else begin
            PV_addr <= PV_addr + 17'b00000000000000001;
          end
        end
      end
    end



  assign PV_lastAddr = PV_addr >= 17'b11101010011000000;



  assign PV_done = PV_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk)
    begin : checkDone_1
      if (reset_x) begin
        check1_done <= 0;
      end
      else begin
        if (PV_done_enb) begin
          check1_done <= PV_done;
        end
      end
    end

  assign snkDone = check5_done & (check4_done & (check3_done & (check1_done & check2_done)));



  assign #1 PV_addr_delay_1 = PV_addr;

  // Data source for PV_expected
  initial
    begin : PV_expected_fileread
      fp_PV_expected = $fopen("PV_expected.dat", "r");
      status_PV_expected = $rewind(fp_PV_expected);
    end

  always @(PV_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        PV_expected <= 10'bx;
      end
      else if (ce_out == 1) begin
        status_PV_expected = $fscanf(fp_PV_expected, "%h", PV_expected);
      end
    end

  assign PV_ref = PV_expected;

  always @(posedge clk)
    begin : PV_checker
      if (reset_x == 1'b1) begin
        PV_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && PV !== PV_ref) begin
          PV_testFailure <= 1'b1;
          $display("ERROR in PV at time %t : Expected '%h' Actual '%h'", $time, PV_ref, PV);
        end
      end
    end

  assign #1 MV_addr_delay_1 = PV_addr;

  // Data source for MV_expected
  initial
    begin : MV_expected_fileread
      fp_MV_expected = $fopen("MV_expected.dat", "r");
      status_MV_expected = $rewind(fp_MV_expected);
    end

  always @(MV_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        MV_expected <= 10'bx;
      end
      else if (ce_out == 1) begin
        status_MV_expected = $fscanf(fp_MV_expected, "%h", MV_expected);
      end
    end

  assign MV_ref = MV_expected;

  always @(posedge clk)
    begin : MV_checker
      if (reset_x == 1'b1) begin
        MV_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && MV !== MV_ref) begin
          MV_testFailure <= 1'b1;
          $display("ERROR in MV at time %t : Expected '%h' Actual '%h'", $time, MV_ref, MV);
        end
      end
    end

  assign #1 p_action_addr_delay_1 = PV_addr;

  // Data source for p_action_expected
  initial
    begin : p_action_expected_fileread
      fp_p_action_expected = $fopen("p_action_expected.dat", "r");
      status_p_action_expected = $rewind(fp_p_action_expected);
    end

  always @(p_action_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        p_action_expected <= 10'bx;
      end
      else if (ce_out == 1) begin
        status_p_action_expected = $fscanf(fp_p_action_expected, "%h", p_action_expected);
      end
    end

  assign p_action_ref = p_action_expected;

  always @(posedge clk)
    begin : p_action_checker
      if (reset_x == 1'b1) begin
        p_action_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && p_action !== p_action_ref) begin
          p_action_testFailure <= 1'b1;
          $display("ERROR in p_action at time %t : Expected '%h' Actual '%h'", $time, p_action_ref, p_action);
        end
      end
    end

  assign #1 error_addr_delay_1 = PV_addr;

  // Data source for error_expected
  initial
    begin : error_expected_fileread
      fp_error_expected = $fopen("error_expected.dat", "r");
      status_error_expected = $rewind(fp_error_expected);
    end

  always @(error_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        error_expected <= 10'bx;
      end
      else if (ce_out == 1) begin
        status_error_expected = $fscanf(fp_error_expected, "%h", error_expected);
      end
    end

  assign error_ref = error_expected;

  always @(posedge clk)
    begin : error_checker
      if (reset_x == 1'b1) begin
        error_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && error !== error_ref) begin
          error_testFailure <= 1'b1;
          $display("ERROR in error at time %t : Expected '%h' Actual '%h'", $time, error_ref, error);
        end
      end
    end

  assign #1 i_action_addr_delay_1 = PV_addr;

  // Data source for i_action_expected
  initial
    begin : i_action_expected_fileread
      fp_i_action_expected = $fopen("i_action_expected.dat", "r");
      status_i_action_expected = $rewind(fp_i_action_expected);
    end

  always @(i_action_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        i_action_expected <= 10'bx;
      end
      else if (ce_out == 1) begin
        status_i_action_expected = $fscanf(fp_i_action_expected, "%h", i_action_expected);
      end
    end

  assign i_action_ref = i_action_expected;

  always @(posedge clk)
    begin : i_action_checker
      if (reset_x == 1'b1) begin
        i_action_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && i_action !== i_action_ref) begin
          i_action_testFailure <= 1'b1;
          $display("ERROR in i_action at time %t : Expected '%h' Actual '%h'", $time, i_action_ref, i_action);
        end
      end
    end

  assign testFailure = i_action_testFailure | (error_testFailure | (p_action_testFailure | (PV_testFailure | MV_testFailure)));



  always @(posedge clk)
    begin : completed_msg
      if (snkDone == 1'b1) begin
        if (testFailure == 1'b0) begin
          $display("**************TEST COMPLETED (PASSED)**************");
        end
        else begin
          $display("**************TEST COMPLETED (FAILED)**************");
        end
      end
    end

endmodule  // DT_tb

