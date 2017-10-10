clc;
R2=4700; //Ohm
R1=18000; //ohm
Vcc=10; //volt
Vth=Vcc*(R2/(R1+R2)); //volt
Rth=(R1*R2)/(R1+R2); //ohm
Vbe=0.7; //volt
Hfe=30;
Re=1200; //ohm
Icq=(Vth-Vbe)/((Rth/Hfe)+Re); //Ampere
Ie=Icq; //Ampere
re=0.025/Ie; //Ohm
Rc=1500; //Ohm
RL=5100; //Ohm
rc=(Rc*RL)/(Rc+RL);//Ohm
Av=rc/re;
disp('',Av,"Av=");//The answers vary due to round off error

