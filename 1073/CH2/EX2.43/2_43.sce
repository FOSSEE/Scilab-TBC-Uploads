
clear;
clc;
//Example 2.43   
//Given
rho=8600    //[kg/cubic m]
Cp=0.42    //kJ/(kg.K)
Cp=Cp*1000    //J/(kg.K)
dia=0.71    //[mm]
dia=dia/1000    //[dia in m]
R=dia/2    //radius [m]
h=600    //convective coeff W/(sq m.K)
//Let length =L=1
L=1         //[m]
A=2*%pi*R*L;
V=%pi*(R^2)*L;
tao=(rho*Cp*V)/(h*A);
printf("Time constant of the thermocouple is %f s",tao);
//at
t=tao
//From  (T-T_inf)/(T0-T_inf)=e^(-t/tao)
ratio=%e^(-t/tao)    //Ratio of thermocouple difference to initial temperature difference
printf("At the end of the time period t=tao=%f s ,Temperature difference b/n the thermocouple and the gas stream would be %f of the initial temperature difference",tao,ratio);
printf("\n It should be reordered after %f s",4*tao);

