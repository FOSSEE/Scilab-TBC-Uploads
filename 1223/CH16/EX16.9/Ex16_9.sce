clear;
clc;
//Example 16.9
Vdd=5;
Vtn=1;
Vtp=-1;
//Kn=Kp hence Kn/Kp=x=1;
x=1;
Vit=(Vdd+Vtp+sqrt(x)*Vtn)/(1+sqrt(x));
printf('\ninput voltage=%.2f V\n',Vit)
Vipt=Vit;
Vopt=Vipt-Vtp;
printf('\noutput voltage at the transition point for PMOS =%.2fV\n',Vopt)
Vint=Vit;
Vont=Vint-Vtn;
printf('\noutput voltage at the transition point for NMOS=%.2f V\n',Vont)
Vdd=10;
Vit=(Vdd+Vtp+sqrt(x)*Vtn)/(1+sqrt(x));
printf('\ninput voltage =%.2fV\n',Vit)
Vipt=Vit;
Vint=Vit;
Vopt=Vipt-Vtp;
printf('\noutput voltage at the transition point for PMOS =%.2fV\n',Vopt)
Vont=Vint-Vtn;
printf('\noutput voltage at the transition point for NMOS =%.2fV\n',Vont)
