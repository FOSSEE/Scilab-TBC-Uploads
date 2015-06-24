clear;
clc;
//Example 17.12
Vy=0.3;
Vbe=0.7;
vx=0.4;
R2=8;
Vce=0.4;
Vcc=5;
b=25;
Vce=0.4;
Vbe1=0.7;
Vbe2=0.7;
Vcc=5;
R1=20;
v1=Vce+Vy;
i1=(Vcc-v1)/R1;
printf('\ni1=%.3f mA\n',i1)
Pl=i1*(Vcc-vx);
printf('\npower dissipation=%.3f mW\n',Pl)
v1=Vbe1+Vbe2;
printf('\nv1=%.3f V\n',v1)
vC2=Vbe1+Vce;
printf('\nvoltage vC2 =%.2fV\n',vC2)
i1=(Vcc-v1)/R1;
printf('\ncurrent i1 =%.3fmA\n',i1)
i2=(Vcc-vC2)/R2;
printf('\ncurrent i2 =%.3fmA\n',i2)
P=(i1+i2)*Vcc;
printf('\npower dissipation for high input condition=%.3f mW\n',P)
