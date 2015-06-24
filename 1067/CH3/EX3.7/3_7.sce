clear;
clc;
Em=100e3
t=70e-6
Ea=Em/t/1e6
f=1/(2*t);
Ea=round(Ea/10)*10;
f=round(f);
printf("average voltage in volts=%dV/microsecs\n",Ea);
printf("frequency of oscillation =%dc/s",f);
