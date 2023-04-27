onbreak resume
onerror resume
vsim -voptargs=+acc work.DT_tb

add wave sim:/DT_tb/u_DT/clk
add wave sim:/DT_tb/u_DT/reset_x
add wave sim:/DT_tb/u_DT/clk_enable
add wave sim:/DT_tb/u_DT/SP
add wave sim:/DT_tb/u_DT/kp
add wave sim:/DT_tb/u_DT/ti
add wave sim:/DT_tb/u_DT/ce_out
add wave sim:/DT_tb/u_DT/PV
add wave sim:/DT_tb/PV_ref
add wave sim:/DT_tb/u_DT/MV
add wave sim:/DT_tb/MV_ref
add wave sim:/DT_tb/u_DT/p_action
add wave sim:/DT_tb/p_action_ref
add wave sim:/DT_tb/u_DT/error
add wave sim:/DT_tb/error_ref
add wave sim:/DT_tb/u_DT/i_action
add wave sim:/DT_tb/i_action_ref
run -all
