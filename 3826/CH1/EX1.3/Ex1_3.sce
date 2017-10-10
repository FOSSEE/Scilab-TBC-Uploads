//Example 1_3 page no:42
clc;
//given
armature_resitance = 0.086//in ohm
fl_arm_current = 150;
volt = 220;
power = 30;//in kiloWatt
ini_brk_current = 200;
full_ld_speed = 535;// in rev/min
back_emf = volt - (fl_arm_current * armature_resitance);
tot_volt = volt + back_emf;
resistance_req = tot_volt / ini_brk_current;
res_added = resistance_req - armature_resitance;
disp(res_added,"the resistance to be added is (in ohm)");
full_ld_torque = (power*1000*60)/(%pi*2*full_ld_speed);
ini_brk_torque = full_ld_torque * ini_brk_current / fl_arm_current;
back_emf = 208/2;//back emf at half speed
current = (volt + back_emf)/resistance_req;
ele_brk_torque = full_ld_torque * current / fl_arm_current;
disp(ele_brk_torque,"Electric braking torque at half speed is (in Nm)");
//the value vary slightly with textbook hence values are rounded off in text book
