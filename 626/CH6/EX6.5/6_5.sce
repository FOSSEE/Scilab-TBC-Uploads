clear;
clc;
close;
disp("Example 6.5")
//from equation CH4+2.4(O2+3.76N2)-->CO2+2H2O+0.4O2+9.02N2
f=(12+4)/(2.4*(32+3.76*28)) //fuel to air ratio based on mass.
fs=(12+4)/(2*(32+3.76*28)) //fuel to air ratio based on stoichometric condition.
feq=f/fs
disp(f,"(a1)fuel to air ratio based on mass:")
disp(fs,"(a2)fuel to air ratio based on stoichometric condition:")
disp(feq,"(b)Equivalent ratio:")
dH=-802303 //kJ
dC=484.7 //kJ
Dt=(-1)*dH/dC //Dt=T2-Tf
Tf=25+273
T2=Dt+Tf
disp(T2,"(c)The diabatic flame temperature in K:")