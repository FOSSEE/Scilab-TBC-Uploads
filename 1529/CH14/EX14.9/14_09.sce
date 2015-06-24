//Chapter 14, Problem 9
clc;
//from eqn v=282.8(sin 314 t)
Vm=282.8;                           //peak voltage
w=314;
t=4e-3;
Vrms=0.707*Vm;
f=w/(2*%pi);
v=282.8*sin(314*t);
printf("(a) Comparing Comparing v=282.8 sin 314 t with this general expression gives the peak voltage as 282.8V\n");
printf("v = %f V\n\n",Vrms);
printf("(b) Angular velocity w = 314 rad/s, therefore\n");
printf("f = %f Hz\n\n",f);
printf("(c) When t = 4ms\n");
printf("v = %f V",v);

