// Motor parameters at a load power factor

clc;
clear;

p=4;
f=50;
V=400;
pf=0.8;
Nr=1440;
Pm=20*(10^3); // Mechanical Power Developed
Ns=120*f/p;
s=(Ns-Nr)/Ns;

rf=s*f; // Rotor frequency

Pstat=1000; //Stator Loss

// Power input to the rotor = Mechanical Power Developed / (1-s)

Pirot=Pm/(1-s); // Rotor Power Input

Pi=Pirot+Pstat; // Power input to stator

Il=Pi/(sqrt(3)*V*pf); // Line Current

printf('For a 4 pole motor running at 1440 rpm and 0.8 p.f \n')
printf('i) Rotor Current frequency = %g Hz \n',rf)
printf('ii) Total input if stator loss is 1000W = %g kW \n',Pi/1000)
printf('iii) The line current = %g A \n',Il)

