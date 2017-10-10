// Motor parameters of a 6 pole motor with 40 hp mechanical power

clc;
clear;

f=50;
p=6;
Pd=40*735.5; // Mechanical Power developed
V=500;
Nr=960;
pf= 0.8; // Lag
Pm=1500; // Mechanical Loss

Ns=120*f/p;

s=(Ns-Nr)/Ns;
Ps=1800; // Stator Loss

Po=Pd-Pm; // Power Output

Pir=Pd/(1-s); // Power input to rotor

Prc=s*Pir; // Copper Loss of the Rotor

Pi=Pir+Ps; // Power input to the stator

eff=Po*100/Pi;

Il=Pi/(sqrt(3)*V*pf);// Line Current

printf('For a 6 pole 3 phase motor at 500V with a power factor of 0.8 lag \n')
printf('i) Rotor Copper Loss = %g W \n',Prc)
printf('ii) Total input to stator if the stator loss is 1500W = %g W \n',Pi)
printf('iii) The line Current = %g A \n',Il)
printf('iv) Efficiency = %g percent \n',eff)

