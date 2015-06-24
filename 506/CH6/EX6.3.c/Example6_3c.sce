clear;
clc;

//Caption:Silicon Transistors and diodes are used in positive NAND
//Given Data
R=15;//in K
R1=15;//in K
R2=100;//in K
R3=2.2;//in K
V0=0;//in V
V1=12;//in V
Vcc=12;//in V

//To find wether with given conditions NANAD gate is satisfied
//Finding thevenin equivallent from P to ground
Rd = 1;//in K
Vd=0.7;//in v
Vr=1;//in K
v = (Vcc*(Rd/(Rd+R)))+(Vd*(R/(R+Rd)));
rs = Rd*(R/(R+Rd));

//If the inputs are high

Vcesat = 0.2;//in V
Vb2 = (-Vcc*(R1/(R1+R2)) + ((Vd+Vcesat)*R2/(R1+R2)));
disp('V',Vb2,'Vb2=');
disp('It cuts off Q Y=1 ');

//end