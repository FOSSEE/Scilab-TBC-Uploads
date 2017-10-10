 clc;
//ex3.10
Vlpk=20.5; //volt
RL=5100; //ohm
Ilpk=Vlpk/RL; //Ampere// from v=r*i
Vave=13.1;  //volt//from v=r*i
Iave=Vave/RL; //Ampere
disp('mA',Ilpk*1000,"Ilpk="); //The answers vary due to round off error
disp('mA',Iave*1000,"Iave="); //The answers vary due to round off error
