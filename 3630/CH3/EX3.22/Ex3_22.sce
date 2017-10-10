clc;
//ex3.22
Vac=36; //Volt
Vspk=Vac/0.707; //Volt
Vf=0.7; //Volt
Vpk=Vspk-2*Vf; //Volt
Vin=Vpk; //Volt
Rs=75; //Ohm
Vz=30; //Volt
Ir=(Vin-Vz)/Rs; //Amperes
t=0.00833 //second
C=0.0022 //Farad
Vr=(Ir*t)/C; //Volt
Vdc=30; //Volt
RL=300; //Ohm
ZZ=60 //Ohm
RL=300 //Ohm
Rs=75 //Ohm
Znet=(ZZ*RL)/(ZZ+RL); //Ohm
Il=Vz/RL; //Ampere
Vrout=(Znet/((Znet)+Rs))*Vr; //Volt
disp('V',Vdc,"Vdc="); //The answers vary due to round off error
disp('mVpp',Vrout*1000,"Vrout="); //The answers vary due to round off error
disp('mA',Il*1000,"Il="); //The answers vary due to round off error

