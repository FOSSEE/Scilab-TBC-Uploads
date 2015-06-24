//Example 6.9// current and phase angle errors
clc;
clear;
Is=5;//IN AMPERES
Ip=100;//primary current in amperes
VA=20;//BURDEN
xr=4;//
mmfc=0.18;//mmf for core loss in AT
Ep=VA/Ip;//voltage across primary winding
d= atand(1/xr);//secondady phase angle in degree
csd= cosd(d);
sd=sind(d);
Kt=20;//
Knom=20
Iw= mmfc/Ep;//loss component in ampere
Im= 1.4;//magnetising component of current in ampere
Kact= Kt+((Im*sd)+(Iw*csd))/Is;//actual ratio
Re=((Knom-Kact)/Kact)*100;//current error in percentage
Pa=((180/%pi)*(Im*csd-Iw*sd))/(Kt*Is);//phase error
disp(Re,"current error in percentage is")
disp(Pa,"phase error in degree is")
//answer is wrong in the book
