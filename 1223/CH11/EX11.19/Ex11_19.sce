clear;
clc;
//Example 11.19
b=100;
Vt=0.026;
Rc=20;
Ir4=0.4;
Iq=Ir4;
Ir6=Ir4;
r4=b*Vt/Ir4;
printf('\nr4=%.2f KOhm\n',r4)
r3=b^2*Vt/Ir4;
printf('\nr3=%.2f KOhm\n',r3)
Ri2=r3+(1+b)*r4;
printf('\ninput resistance=%.2f KOhm\n',Ri2)
gm=Iq/(2*Vt);
printf('\ntransconductance=%.3f mA/V\n',gm)
Ad1=gm*Rc*Ri2/(2*(Rc+Ri2));
printf('\ngain of differential amplifier stage=%.2f\n',Ad1)
r5=b*Vt/Ir6;
printf('\nr5 =%.2fKOhm\n',r5)
Ir7=2;
r6=b*Vt/Ir7;
printf('\nr6=%.2f KOhm\n',r6)
R6=16.5;
R7=5;
Ri3=r5+(1+b)*(R6+r6+(1+b)*R7);
Ri3=Ri3*0.001;//MOhm
printf('\nRi3=%.2f MOhm\n',Ri3)
Rs=5;
A2=Ir4*Rs/(2*Vt);
printf('\nvoltage gain A2=%.2f\n',A2)
A3=1;//vo/vo3
Ad=Ad1*A2*A3;
printf('\nsmall signal voltage gain=%.2f\n',Ad)
