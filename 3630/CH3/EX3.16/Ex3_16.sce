clc;
//ex3.16
Vac=24; //volt
Vspk=Vac/0.707; //volt
Vf=0.7; //volt
Vlpk=(Vspk/2)-Vf; //volt
Vdc=Vlpk; //volt
RL=1200; //ohm
IL=Vdc/RL; //Amperes //v=r*i
t=0.00833 //second
C=0.00047 //farad
Vr=(IL*t)/C; //volt
Vdc=Vlpk-(Vr/2); //volt
disp('V',Vdc,"Vdc="); //The answers vary due to round off error
