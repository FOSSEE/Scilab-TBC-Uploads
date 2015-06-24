// Exa 3.14
format('v',7);clc;clear;close;
// Given data
// Case (i): When voltmeter having a sensitivity of 500 Ω/V
R1 = 20;// in k ohm
R2 = 25;// in k ohm
Vdc = 250;// in V
V = (Vdc/(R1+R2))*R2;// in V
Vrange = 150;// in V
S = 500;// in ohm/V
R_V = S*Vrange;// in ohm
R_V = R_V * 10^-3;// in k ohm
Req = (R2*R_V)/(R2+R_V);// in k ohm
V = (Req/(Req+R1))*Vdc;// in V voltmeter first
disp("Case (i): When voltmeter having a sensitivity of 500 Ω/V")
disp("                The voltmeter will reads : "+string(V)+" V");
// Case (ii): When voltmeter having a sensitivity of 1000 Ω/V
S = 10000;// in ohm/V
R_V = S*Vrange;// in ohm
R_V = R_V * 10^-3;// in k ohm
Req = (R2*R_V)/(R2+R_V);// in k ohm
V = (Req/(Req+R1))*Vdc;// in V  Voltmeter second
disp("Case (ii): When voltmeter having a sensitivity of 1000 Ω/V")
disp("                 The voltmeter will reads : "+string(V)+" V");
disp("Thus the second voltmeter reads more accurately.")
