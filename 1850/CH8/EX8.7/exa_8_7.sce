// Exa 8.7
clc;
clear;
close;
//given data
R1= 150;// in ohm
R2= 68;// in kohm
R2=R2*10^3;// in ohm
Vin= 500;// in mv
V_sat= 14;//in volt
V_pos= R1/(R1+R2)*V_sat;// in volt
V_UT= V_pos;//in volt
// In the same way when output is -14 volts and starts increasing in negative direcition 
V_sat=-14;//in volt
V_pos= R1*V_sat/(R1+R2);// in volt
V_LT= abs(V_pos);//in volt
disp(V_UT,"Value of V_UT in volts")
disp(V_LT,"Value of V_LT in volts")
