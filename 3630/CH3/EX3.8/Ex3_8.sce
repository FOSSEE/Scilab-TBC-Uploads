clc;
//ex3.8
Vac=48; //volt
Vspk=Vac/0.707; //volt
Vf=0.7; //volt
Vlpk=Vspk-Vf; //volt
Vave=Vlpk/%pi; //volt
disp('V',-Vspk,"Vspk="); //The answers vary due to round off error
disp('V',-Vlpk,"Vlpk="); //The answers vary due to round off error
disp('V',-Vave,"Vave="); //The answers vary due to round off error
