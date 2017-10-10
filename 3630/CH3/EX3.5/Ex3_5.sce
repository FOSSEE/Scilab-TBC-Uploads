clc;
//ex=3.5
Vprms=120; //volt
Vppk=Vprms/0.707; //volt
Ns=1;
Np=2;
Vspk=(Ns/Np)*Vppk; //volt
Vf=0.7; //volt
Vlpk=Vspk-Vf; //volt
Vave=Vlpk/3.14; //volt
disp('V',Vppk,"Vppk=");//The answers vary due to round off error.
disp('V',Vspk,"Vspk=");//The answers vary due to round off error.
disp('V',Vlpk,"Vlpk=");//The answers vary due to round off error.
disp('V',Vave,"Vave=");//The answers vary due to round off error


