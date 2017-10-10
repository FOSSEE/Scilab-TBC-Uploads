//Example 1.8(b)
clc;

VFs=100;                 //Full Scale
Ve=0.015;                //error permissable +-1.5%
V=70;                    //Voltage measured
V_lim_err=VFs*Ve;         //magnitude of limiting error
//limiting error at a given voltage drop V
lim_err_V=100*V_lim_err/V;

IFs=150*10^-3;           //Full Scale
Ie=0.015;                //error permissable +-1.5%
I=80*10^-3;              //Current measured
I_lim_err=IFs*Ie;        //magnitude of limiting error
//limiting error at a given current I
lim_err_I=100*I_lim_err/I;

//Limiting error of power
lim_err_P=lim_err_V+lim_err_I;

printf('\nLimiting error at 70 V = %.3f percent\n',lim_err_V)
printf('\nLimiting error at 80 mA = %.3f percent\n',lim_err_I)
printf('\nLimiting error of power = %.3f percent\n',lim_err_P)