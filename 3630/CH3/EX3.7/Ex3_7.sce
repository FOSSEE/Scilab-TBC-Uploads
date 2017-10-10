clc;
//ex3.7;
Vac=24;//volt
Vspk=Vac/0.707; //volt
Vlpk=Vspk-0.7; //volt
RL=20000; //Ohm
Ilpk=Vlpk/RL; //Ampere
Iave=Ilpk/3.14; //Ampere
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('V',Vlpk,"Vlpk="); //The answers vary due to round off error
disp('mili Amperes',Ilpk*1000,"Ilpk="); //The answers vary due to round off error
disp('Micro Amperes',Iave*1000000,"Ilpk="); //The answers vary due to round off error

