clc;
B=200;
Ib=0.000125; //Ampere
Ic=B*Ib; //Ampere
Ie=Ib+Ic; //Ampere
disp('mA',Ic*1000,"Ic=");
disp('mA',Ie*1000,"Ie=");
