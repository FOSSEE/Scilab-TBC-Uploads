clear;
clc;
//Example 1.5
T=300;//(°K)Given Temperature
V_T=0.026;//(Volt)terminal voltage
Is=10^-11;//(mA)reverse bias saturation current
n=1;//emission coefficient
v_D=+0.7;//(V)applied voltage
//pn junction is forward biased
i_D=Is*(exp(v_D/V_T)-1);//diode current
printf('\ndiode current=%f mA\n',i_D)
v_D=-0.7;//(V)pn junction is reverse biased
Is=10^-14//A;
i_D=Is*(exp(v_D/V_T)-1);//diode current
printf('\ndiode current=%e A',i_D)
