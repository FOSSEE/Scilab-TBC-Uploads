clear;
clc;
//Example 5.17
Idss=5;//mA
Vp=-4;
Vdd=10;
I_D=2;
Vds=6;
//I_D=Idss*(1-Vgs/Vp)^2
Vgs=(1-sqrt(I_D/Idss))*Vp;
printf('\nVgs=%.2f V\n',Vgs)
Rs=-Vgs/I_D;
printf('\nRs=%.3f KOhm\n',Rs)
Rd=(Vdd-Vds-I_D*Rs)/I_D;
printf('\nRd=%.2f KOhm\n',Rd)
Vgs-Vp
//since Vds>Vgs-Vp JFET is biased in saturation
