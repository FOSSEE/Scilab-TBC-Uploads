//Example 1_7 page no:74
clc;
//given
power = 75;//in kW
rpm = 500;
energy = 5400;
fl_load_torque = (power * 1000 * 60)/(2 * %pi * rpm);
str_torque = 2145;
acc_torque = 715;
stored_energy = energy * power;
omega = rpm *(2*%pi/60);
I = (2 * stored_energy)/(omega^2);
alpha = acc_torque / I;
t = omega / alpha;
disp(t,"the time taken to start the motor if the load torque is equal to full load torque is (in s)");
//the result vary slightly hence values are rounded off in text book
