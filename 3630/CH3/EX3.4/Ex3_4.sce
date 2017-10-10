clc;
//ex3.4
Vprms=120; //volt
Vppk=Vprms/0.707; //volt
Ns=1;
Np=3;
Vspk=(Ns/Np)*Vppk; //volt
Vf=0.7; //volt
VLpk=Vspk-Vf; //volt
RL=10000; //ohm
ILpk=VLpk/RL; //Ampere
disp('V',Vppk,"Vppk="); //The answers vary due to round off error
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('V',VLpk,"VLpk="); //The answers vary due to round off error
disp('mA',ILpk*1000,"ILpk="); //The answers vary due to round off error
