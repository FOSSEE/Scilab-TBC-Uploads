//Example 4.25
close;
clc;

V=3;                  //in volts
Rm=50;                //In ohms
Rh=10;                //in ohms
Im=10*10^-3;          //in amperes
Ih=0.5*Im;            //Half scale definition
Vm=Ih*Rm;             //Voltage across the movement
//Voltage across unknown resitence =Voltage across meter movement
Ix=Vm/Rh;             //Current through unknown resistence
Ish=Ix-Im/2;          //Current through shunt
Rsh=Vm/Ish;           //Shunt resistence
printf('\nValue of Shunt resistence Rs = %.2f ohm\n',Rsh)
//Calculation of R1
It=Ix+Im/2+Ish;       //Total battery current
V_drop=V-Vm;          //Voltage drop across limiting resistor
R1=V_drop/It;
printf('Value of limiting resistence R1 = %.2f ohm\n',R1)