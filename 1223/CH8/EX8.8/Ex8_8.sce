clear;
clc;
//Example 8.8
Vcc=24;
Rl=8;
P=5;
Vbe=0.7;
b=100;
Vp=sqrt(2*Rl*P);
printf('\npeak output voltage=%.2f V\n',Vp)
Ip=Vp/Rl;
printf('\npeak output current =%.2fA\n',Ip)
a=0.9*Vcc/Vp;
printf('\na=%.2f\n',a)
Icq=Ip/(0.9*a);
printf('\nIcq=%.3f A\n',Icq)
Pq=Vcc*Icq;
printf('\nmaximum power dissipated in the transistor=%.2f W\n',Pq)
Ibq=Icq/b;
Ibq=Ibq*1000;//mA
printf('\nbase current Ibq=%.2f mA\n',Ibq)
Rth=2.500;
//Vth=Vcc*Rth/R1 and Vth=Ibq*Rth+Vbe
R1=Vcc*Rth/(Ibq*Rth+Vbe);
printf('\nR1=%.2f KOhm\n',R1)
R2=Rth*R1/(R1-Rth);
printf('\nR2=%.2f KOhm\n',R2)
