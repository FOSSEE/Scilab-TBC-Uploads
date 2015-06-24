//problem 2.12
clc;
clear;
close;
//given data :
//Isc=4*If;
Isc_by_If=4;
Slip=2.5;//in %
disp("Ts is proportional to Is^2");
disp("and Tf is proportional to If^2/S");
disp("From these eqn we get :")
Ts_by_Tf=(Isc_by_If)^2*(Slip/100);//ratio
disp("Starting torque is "+string(Ts_by_Tf*100)+" % of full load torque.");
