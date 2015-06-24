clc
disp("Example 7.26")
printf("\n")

printf("Given")
disp("Period =10s")
disp("Interval is 1ms")
disp("Voltage of binary signal is either 0.5 or -0.5")
T=10;
//During 10s period there are 10000 intervals of 1ms each
//For calculating average equal number of intervals are considered at 0.5V and -0.5V
vavg=(0.5*5000-0.5*5000)/10000
//The effective value of v(t) is
//Let V=V^2eff
V=(0.5^2*5000+(-0.5)^2*5000)/10000
Veff=sqrt(V)
printf("vavg=%dV\nVeff=%3.2fV\n",vavg,Veff)
