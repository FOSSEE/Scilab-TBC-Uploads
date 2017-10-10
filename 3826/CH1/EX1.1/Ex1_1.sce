//Example 1_1 page no:15
clc;
//given
line_voltage = 400;//in V
phase_voltage = line_voltage/sqrt(3);//in V
Starting_current = 75;//in A
impedance = 1.54;//in ohm
full_load_current = 30;//in A
slip = 0.04;//in percent
tapping = sqrt((Starting_current*impedance*100^2)/phase_voltage);
disp(tapping,"the tapping provided is(in percent)");
start_current = Starting_current * 100 / tapping;
ratio = (start_current/full_load_current)^2*slip;
disp(ratio,"starting torque in terms of full load torque is(no unit)");
