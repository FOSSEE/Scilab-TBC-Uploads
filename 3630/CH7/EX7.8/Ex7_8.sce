clc;
Vcc=20; //volt
R2=1000; //ohm
R1=6800; //ohm
Vb=(R2/(R1+R2))*Vcc; //volt//voltage divider rule
Ve=Vb-0.7; //volt
Re=1000; //ohm
Ie=Ve/Re; //Ampere
Hfe=50;
Ib=Ie/(Hfe+1); //Ampere
disp('Amperes',Ib,"Ib=");//The answers vary due to round off error
