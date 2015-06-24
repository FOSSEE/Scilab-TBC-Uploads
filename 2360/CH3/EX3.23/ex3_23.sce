// Exa 3.23
format('v',5);clc;clear;close;
// Given data
I = 100;// in mA
Im = 1;// in mA
Rm = 25;// in ohm
// m = I/Im = 1 + Rm/Rsh;
Rsh = Rm/((I/Im) - 1);// in ohm
del_t = 10;// in °C
Alpha_c = 0.004;
Alpha_m = 0.00015;
// When temperature increase by 10 °C
R_m = Rm * ( 1 + (Alpha_c*del_t) );// in ohm
R_sh = Rsh * (1 + (Alpha_m*del_t));// in ohm
// When I= 100 mA then
I_m = (R_sh/(R_sh+R_m))*I;// in mA
// But Im required for full scale deflection
PerEerror= ((I_m-Im)/Im)*100;// in %
disp("Part (i) ");
disp(PerEerror,"The percentage error in % is");
Rx = 75;// in ohm
Rtotal = Rm+Rx;// in ohm
Rsh = Rtotal/((I/Im) - 1);// in ohm
//R_total =R_m+R_x;
R_total = R_m + (Rx*(1+(Alpha_m*del_t)));// in ohm
R_sh = Rsh * (1+( Alpha_m*del_t ));// in ohm
I_m = (R_sh/(R_sh+R_total))*I;// in mA
PerEerror = ((I_m-Im)/Im)*100;//percentage error in %
disp("Part (ii) ");
disp(PerEerror,"The percentage error in % is");
