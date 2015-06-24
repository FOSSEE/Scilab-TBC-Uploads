clear;
clc;
//Example 9.5
Zl=0.1;
R1=10;
R2=1;
R3=1;
Rf=10;
Vt=-5;
iL=-Vt/R2;
printf('\nload current=%.3f mA\n',iL)
vL=iL*Zl;
printf('\nvoltage across the load=%.2f V\n',vL)
i4=vL/R2;
printf('\ni4=%.3f mA\n',i4)
i3=i4+iL;
printf('\ni3=%.3f mA\n',i3)
Vo=i3*R3+vL;
printf('\noutput voltage=%.2f V\n',Vo)
i1=Vt/R1;
i2=i1;
printf('\ni1=%.3f mA\n',i1)
printf('\ni2=%.2f mA\n',i2)
