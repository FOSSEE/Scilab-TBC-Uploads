// Example 2.36:R1,Rc & S
clc;
clear;
close;
Vcc=16;// Colector voltage in volts
alfa=0.985;
Ieq=2;// Emiier current in mA
R2=30;// resistance in killo ohms
Re=1;// Emitter resistance in killo ohms
Vbe=0.2;// Base to emitter voltage in volts
Vceq=6;// Collector to emitter voltage in volts
Beta= alfa/(1-alfa);
Icq=alfa*Ieq;
Rc=(Vcc-Vceq-Ieq*Re)/Icq;
Ir1=((Ieq*Re+Vbe)/R2)+Icq/Beta;
R1=(Vcc-Vbe-(Ieq*Re))/Ir1;
Rb= (R1*R2)/(R1+R2);
S=(1+Beta)/(1+Beta*(Re/(Re+Rb)));
disp (R1," resistance in killo ohms")
disp(Rc,"Collector resistence in killo ohms")
disp (S,"The Stability factor")
