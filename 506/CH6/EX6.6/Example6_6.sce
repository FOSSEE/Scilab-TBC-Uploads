clear;
clc;

//Caption:Calculation of FAN OUT of NAND gate
//Given Values
hFE=30;
Vbe1active=0.7;//in V
Vd2=0.7;//in V
Vbe2sat=0.8;//in V
Vcc=5;//in V
R1=1.75;//in K
R2=2;//in K
R3=2.2;//in K
R4=5;//in K

Vp = Vbe1active + Vd2 + Vbe2sat;//Voltage at point P
//The current in 2K resistor is Ib1
//In active region
//Ic1=hFE*Ib1
//I1 = Ib1+Ic1=(1+hFE)*Ib1.... Now applying KVL between Vcc and Vp
//Vcc-Vp = R1*(1+hFE)*Ib1 + 2*Ib1
Ib1 = (Vcc-Vp)/(R1*(1+hFE)+2);//Base current in transistor 1
disp('mA',Ib1,'Ib1=');
Ic1=hFE*Ib1;//Collector Current in transistor 1
disp('mA',Ic1,'Ic1=');
I1 = Ib1 + Ic1;//in mA
I2=Vbe2sat/R4;//in mA
Ib2 = I1-I2;//Base Current in Transistor 2
//The unloaded current of Q2
Iq2=(Vcc-0.2)/R3;
//For each gate which it drive ,Q2 must sink a standard load of
I=(Vcc-Vd2-0.2)/(R1+R2);
//To Calculate the FAN OUT
//The maximum current is hFE*Ib2
//hFE*Ib2 = (I*N) + Iq2
N=((hFE*Ib2)-Iq2)/I;//FAN OUT
disp(N,'N=');

//end