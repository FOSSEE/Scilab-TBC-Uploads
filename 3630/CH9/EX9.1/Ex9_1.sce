clc;
R2=2200; //ohm
R1=10000; //ohm
Vcc=10; //volt
Vb=Vcc*(R2/(R1+R2)); //volt
Ve=Vb-0.7; //volt
Re=1000; //ohm
Ie=Ve/Re; //Ampere
re=0.025/Ie; //Ohm
disp('ohm',re,"re=");//The answers vary due to round off error


