//Exa 2.5
clc;
clear;
close;
//given data
r1=5;// in cm
r2=5+4;// in cm
r3= 9+2.5;// in cm
k1=0.0701;// in W/mK
k2=0.1;// in W/mK
L=20;// in m
disp("Saturation temperature of steam at 171*10^4 N/m^2 is 204.36 degree C. So temperature of steam passing through the pipe is = 204.36+30 = 234.36 degree C")
T1=234.36;// in degree C
T3=24;// in degree C
sigmaR= (log(r2/r1)/(2*%pi*k1*L) + log(r3/r2)/(2*%pi*k2*L));


// Part (i)
q=(T1-T3)/sigmaR;// in watt
disp(q,"Heat transfer rate in watt");

// Part(ii)
// Formula q= (T1-T2)/(log(r2/r1)/(2*%pi*k1*L))
T2 =T1- (q*(log(r2/r1)/(2*%pi*k1*L)));
disp(T2,"Interface temperature of insulation in degree ")