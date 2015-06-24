clear;
clc;

//Caption://To find wether with given conditions NAND gate is satisfied
//Given Data
R=15;//in K
R1=15;//in K
R2=100;//in K
R3=2.2;//in K
V0=0;//in V
V1=12;//in V
Vcc=12;//in V

//If input is at V0=0V
Vb = -Vcc*(R1/(R1+R2));//Base Current in V

//Finding thevenin equivallent fom P to ground
Rd = 1;//in K
Vd=0.7;//in v
Vr=1;//in K
//Thevenin Equivallent Voltage and resistance from P to ground
v = (Vcc*(Rd/(Rd+R)))+(Vd*(R/(R+Rd)));
rs = Rd*(R/(R+Rd));
//Open Circuit Voltage at base of the transistor
Vb1 = (-Vcc*((R1+rs)/(R1+R2+rs))) + (v*(R2/(R1+R2+rs)));
disp('V',Vb1,'Vb1=');
if(Vb1>Vb)
    disp('The voltage is adequate to reverse bias Q');
end


//end