clear;
clc;
//Example 13.5
bp=50;
bn=200;
Va=50;
R9=50;
R8=0.100;
Rl=2;
Vt=0.026;
Ri2=4070;
Ic20=0.138;
r20=bp*Vt/Ic20;
printf('\nr20=%.2f KOhm\n',r20)
R20=r20+(1+bp)*Rl;
printf('\nR20=%.2f KOhm\n',R20)
Ic13A=0.18;
R19=Va/Ic13A;
printf('\nR19=%.2f KOhm\n',R19)
r22=bp*Vt/Ic13A;
printf('\nr22=%.2f KOhm\n',r22)
Ri3=r22+(1+bp)*R19*R20/(R19+R20);
Ri3=Ri3*0.001;//MOhm
printf('\ninput resistance to the output stage=%.2f MOhm\n',Ri3)
Ic13B=0.54;
R=Va/Ic13B;
printf('\neffective resistance of the active load=%.2f KOhm\n',R)
Ic17=Ic13B;
R17=Va/Ic17;
printf('\noutput resistance Ro17 =%.2fKOhm\n',R17)
Ri3=Ri3*1000;//KOhm
r17=9.63;
x=R17*Ri3/(Ri3+R17);
y=x*R/(R+x);
A=-bn*R9*(1+bn)*y/(Ri2*(R9+r17+(1+bn)*R8));
printf('\nsmall signal voltage gain=%.2f\n',A)
