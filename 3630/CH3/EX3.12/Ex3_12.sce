clc;
//ex3.12
Vac=12; //volt
Vspk=Vac/0.707; //volt
Vf=0.7; //volt
Vlpk=(Vspk/2)-Vf; //volt
Vave=(2*Vlpk)/%pi; //volt
RL=120; //ohm
Iave=Vave/RL; //Ampere
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('V',Vlpk,"Vlpk="); //The answers vary due to round off error
disp('V',Vave,"Vave="); //The answers vary due to round off error
disp('mA',Iave*1000,"Iave="); //The answers vary due to round off error
