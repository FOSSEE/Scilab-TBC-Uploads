// Example 1.1 

clear; clc; close;

format('v',6);
// Given data
Zinner=0.01+0.5*%i;//Impedence at standstill of inner cage in ohm
Zouter=0.05+0.1*%i;//Impedence at standstill of outer cage in ohm

//Calculations
//Part (a) : at starting
R1=real(Zinner);//in ohm
R2=real(Zouter);//in ohm
X1=imag(Zinner);//in ohm
X2=imag(Zouter);//in ohm
//Formula : Ts=3/ws*V_dash^2*R2/(R2^2+X2^2)
TsoBYTsi=(R2/(R2^2+X2^2))/(R1/(R1^2+X1^2))
disp(TsoBYTsi,"Part(a) Ratio of Torque : ");
//Part(b) : slip =5%
S=5/100;//slip
//Formula : T=3/ws*V_dash^2*(R2/S)^2/((R2/S)+X2^2)
ToBYTi=((R2/S)/((R2/S)^2+X2^2))/((R1/S)/((R1/S)^2+X1^2))
disp(ToBYTi,"Part (b) Ratio of Torque : ");
