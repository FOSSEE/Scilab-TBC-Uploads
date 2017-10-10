clc;
//step1
Vcc=20; //volt
R2=20000; //ohm
R1=150000; //ohm
Vb=20*(R2/(R2+R1)); //Volt
Ve=Vb-0.7; //volt
Re=2200; //ohm
Ie=Ve/Re; //Ampere
re=0.025/Ie; //ohm
Rc=12000; //ohm
RL=50000; //ohm
rc=(Rc*RL)/(Rc+RL); //ohm
Av=rc/re;
disp('',Av,"Av=");//The answers vary due to round off error

