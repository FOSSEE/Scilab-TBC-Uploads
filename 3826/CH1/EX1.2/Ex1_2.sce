//Example 1_2 page no:23
clc;
//given
//solving a sub part
voltage = 500;//in v
current = 32;//in A
arm_res = 0.4;//in ohm
fl_win_res = 250;//in ohm
rpm = 450;
field_current = 2;
input_pow = (voltage*current)/1000;
arm_current = current - field_current;
//when running at 600rpm
rpm1 = 600;
k_phi = (voltage - 12)/rpm1;
//when running at 450rpm
R = -(k_phi*rpm-voltage)/arm_current;
R = R - arm_res;
disp("To decrease the speed to 450 rev/min");
disp(R,"the resistance added with the armature is (in ohm)");
disp(current,"the current is (in A)");
disp(input_pow,"the kw-input taken from the supply is(in kW)");
//solving b sub part
disp("To increase the speed to 700 rev/min");
flux_ratio = 600/700;
res_added = (fl_win_res/flux_ratio)- fl_win_res;
disp(res_added,"the resistance to be added is (in ohm)");
arm_current = arm_current*(1/flux_ratio);
fld_current = 1.25;
tot_current = arm_current + fld_current;
pow = tot_current * voltage/1000;
disp(arm_current,"the armature current is (in A)");
disp(fld_current,"the field current is (in A)");
disp(tot_current,"the total current is (in A)");
disp(pow,"the kw-input taken from the supply is(in kW)");
//the resistance value is rounded off in text book so armature current, total current , input power vary slightly with text book
