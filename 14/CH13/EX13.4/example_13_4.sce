//Chapter 13
//Page 363
//Example 13.4
//Zone
clear;clc;
//Given
l_12 = 64;l_23 = 64;l_24 = 96;//in km
l_12m = 40;l_23m = 40;l_24m = 60;
z = 0.05 + %i * 0.5;
Pmax = 50e6;
V = 138e3;pf = 0.8;cvt = 67;
Z_12 = z * l_12;Z_23 = z * l_23;Z_24 = z * l_24;
disp('The positive sequnce impedances of the three line in ohms in the order line 1-2,line 2-3,line 2-4 are')
disp(Z_12);disp(Z_23);disp(Z_24);
Il_max = Pmax / (sqrt(3) * V);disp(Il_max,'Maximum load current in A')
Vn = V/ sqrt(3);disp(Vn,'System Voltage to neutral')
ratio_cvt = Vn / cvt;disp('cvt ratio = 1089.1/1')
b1_factor = l_12m / ratio_cvt;
Z_r12 = Z_12 * b1_factor;
Z_r23 = Z_23 * b1_factor;
Z_r24 = Z_24 * b1_factor;
disp('The impedance of the lines as seen by R12 in ohms in the order line 1-2,line 2-3,line 2-4 are')
disp(Z_r12);disp(Z_r23);disp(Z_r24);
Zload = (cvt * (pf + %i * sqrt(1-pf^2))) / (Il_max * (5/200));disp(Zload,'Impedance of load current')
zone1 = 0.8 * Z_r12;disp(zone1,'Setting of zone one on secondary in ohms')
zone2 = 1.2 * Z_r23;disp(zone2,'Setting of zone two on secondary in ohms')
zone3 = Z_r23 + 1.2 * Z_r24;disp(zone3,'Setting of zone three on secondary in ohms')