clear;
clc;
//Example 5.19
Idss=2.5;
Vp=2.5;
I_D=0.8;
//I_D=Iq=0.8*10^-3=(Vd-(-9))/Rd
Vd=0.8*4-9;
printf('\nVd =%.2fV\n',Vd)
//I_D=Idss*(1-Vgs/Vp)^2;
Vgs=(1-sqrt(I_D/Idss))*Vp;
printf('\nVgs =%.2fV\n',Vgs)
Vs=1-Vgs;
printf('\nVs=%.2f V\n',Vs)
Vsd=Vs-Vd;
printf('\nVsd=%.2f V\n',Vsd)
Vp-Vgs
//since Vsd>Vp-Vgs JFET is biased in saturation
