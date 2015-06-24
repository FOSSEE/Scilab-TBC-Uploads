clc;clear;
//Example 17.4

//given data
T0=200+273;//converted in K
P0=1400;

//from Table A-2a
k=1.289;

//calculations
//Tc & Tr stands for critical temp and ratio respectively
//Pc & Pr stands for critical temp and ratio respectively
Tr=2/(k+1);
Pr=(2/(k+1))^(k/(k-1));
Tc=Tr*T0;
Pc=Pr*P0;
Tc=floor(Tc);
Pc=ceil(Pc);
disp(Tc,'critical temperature in K');
disp(Pc,'critical pressure on kPa')
