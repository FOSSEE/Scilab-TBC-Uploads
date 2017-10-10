clc;
//ex3.14
Vppk=170; //volt
Ns=1;
Np=2;
Vspk=(Ns/Np)*Vppk; //Volt//(N1/N2=Vp/Vs)
Rw=0.8; //ohm
Rb=5; //ohm
Isurge=Vspk/(Rw+Rb); //Ampere
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('A',Isurge,"Isurge="); //The answers vary due to round off error
