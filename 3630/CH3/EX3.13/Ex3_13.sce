clc;
//ex3.13
Vac=36; //Volt
Vspk=Vac/0.707; //Volt
Vf=0.7; //Volt
Vlpk=Vspk-2*Vf; //Volt
Vave=(2*Vlpk)/%pi; //Volt
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('V',Vlpk,"Vlpk="); //The answers vary due to round off error
disp('V',Vave,"Vave="); //The answers vary due to round off error
