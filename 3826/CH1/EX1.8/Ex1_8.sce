//Example 1_8 page no:75
clc;
//given
voltage = 2200;//in V
power = 110;//in kW
rpm = 750;// rotation per minute
inertia = 62;//in kg.m^2
resistance = 13;//in ohm
efficiency = 0.93;//93% converted to decimal
fl_load_torque = (power * 1000 * 60)/(2*%pi*rpm);
fl_ld_line_current = (power * 1000)/(sqrt(3)*voltage* efficiency);
ln_current = 2000/(sqrt(3)*resistance);
ele_brk_torque = 4200;//in Nm
tot_brk_torque = ele_brk_torque + 1400;
omega = (rpm * 2* %pi)/60;
Te = 4200;//in Nm
K = Te/omega;
t = ((60/K)*log(5600/1400));
disp(t,"the time taken is (in s)");
r = ((1.12*5600/(2*%pi*53.5))*(1-exp(-0.893*1.55))+1.7)-((1400/(2*%pi*53.5))*1.95);
disp(r,"the number of revolution made before the motor stopped is (no unit)");//it is count it has no unit
