clear;
clc;
//Example 3.13
b=100;
Vcc=12;
Vbe=0.7;
Icq=1;//mA
Vceq=6;
Rc=(Vcc-Vceq)/Icq;
printf('\ncollector resistance=%.3f KOhms\n',Rc)
Ibq=Icq/b;
printf('\nbase current=%0.3f mA\n',Ibq)
Rb=(Vcc-Vbe)/Ibq;
printf('\nbase resistance=%.3f KOhms\n',Rb)
