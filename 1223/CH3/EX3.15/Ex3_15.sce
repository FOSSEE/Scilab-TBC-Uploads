clear;
clc;
//Example 3.15
Vcc=5;
Rc=1;//KOhm
Vbe=0.7;
b=120;
Vceq=3;
Re=.510;
Icq=(Vcc-Vceq)/(Rc+Re);
printf('\ncollector current=%.3f mA\n',Icq)
Ibq=Icq/b;
printf('\nbase current=%0.3f mA\n',Ibq)
//for bias stable circuit
Rth=0.1*(1+b)*Re;
printf('\nThevenin rquivalent resistance=%.1f KOhm\n',Rth)
//Ibq=(Vth-Vbe)/(Rth+(1+b)*Re)
Vth=Ibq*(Rth+(1+b)*Re)+Vbe;
printf('\nThevenin equivalent voltage=%.2f V\n',Vth)
//Vth=(R2/(R1+R2))*Vcc
//let x=(R2/(R1+R2))
x=Vth/Vcc
//Rth=6050=R1*x
R1=6.05/x;
printf('\nR1=%.1f KOhms\n',R1)
R2=x*R1/(1-x);
printf('\nR2=%.1f KOhms\',R2)
