clc;
//ex3.2
Vprms=120; //volt
Vppk=Vprms/0.707; //volt
Np=5;
Ns=1;
Vspk=(Ns/Np)*Vppk; //volt
Vf=0.7; //volt
VLpk=Vspk-Vf //volt
disp('V',Vppk,"Vppk=");//The answers vary due to round off error
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('V',VLpk,"VLpk="); //The answers vary due to round off error
