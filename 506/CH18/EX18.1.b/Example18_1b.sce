clear;
clc;

//Caption:Calculation of Sv
//Given Data
Vo=25;//in V
ro=10;//in ohm

Rz = 12;//in ohm
Vo=25;//output voltage in V
Vr = 7.5 + 7.5;//because two diodes are used
Iz = 20;//in mA
Ie2=10;//in mA
Ic2 = Ie2;
Icmax=30;//in mA
Vcemax=45;//in V
hFE2=220;
hfe2=200;
hie2=800;//in ohm
Id=10;//in mA
Il = 1000;//in mA
Vi = 50;//in V
dVi = 10; //change in input voltage
dIl = 1;//change in load current

//For D1 and D2 operate
Iz = Id + Id;
Rd = (Vo-Vr)/Id;

Ib2 = (1000*Ic2)/hFE2;

//Since we require I1>Ib2 , we select
I1=10*(10^-3);//in A
Vbe = 0.7;//in V

V2 = Vbe + Vr;

R1 = (Vo-V2)/I1;
R2 = V2/I1;

//We are selecting Texas Instruments 2N1722 silicon power transistor, so following parameters are required
Ic1 = 1;//in A
hFE1=125;
hfe1=100;
hie1=20;

Ib1 =(1000*I1 + Il + Id)/hFE1;
//The current through resistor R3
I=Ib1 + Ic2;

R3 = (Vi - (Vbe + Vo))/I;
Gm = hfe2*(R2/(R2+R1))*(1/((R1*R2/(R1+R2))+hie2+(1+hfe2)*Rz)) ;
Sv = (10^-3)/(Gm*R3);
disp(Sv,'Sv=');

//End