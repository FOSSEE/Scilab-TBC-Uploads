//To determine the circuit parameters of an unbalanced load
//Page 308
clc;
clear;
//Primary Voltage
V1=7272*(%i*%pi*0/180);

//Secondary Voltages
Ea=120*(%i*%pi*0/180);
Eb=120*(%i*%pi*0/180);

//Impedances
Za=0.8+(%i*0.6);
Zb=0.8+(%i*0.6);

n=60; //Turns Ratio

deff('x=angle(y)','x=atand(imag(y)/real(y))') //To Determine the Angle
 
//Substituting the values we get the following equations
//121.2 = Ia*(0.8857 + j0.6846) + Ib*(0.03279 + j0.03899)
//121.2 = Ia*(-0.03279 - j0.03899) + Ib*(-0.88574 + j0.50267)

//For Convenience We segregate them as
Z1=(0.8857+(%i*0.6846));
Z2=(0.03279+(%i*.03899))
Z3=(-0.03279-(%i*.03899))
Z4=(-0.88574+(%i*.50267))

Z=[Z1,Z2;Z3,Z4]; //Impedance matrix
V=[121.2;121.2]; //Voltage Matrix
I=inv(Z)*V; //Current Matrix

//Secondary Currents
Ia=I(1);
Ib=I(2);

In=-Ia-Ib; //Secondary neutral Currents

//Secondary Voltages
Va=Za*Ia;
Vb=-1*Zb*Ib;

//Secondary Voltage Resultant
Vab=Va+Vb;

printf('\na) The Secondary Currents are:\n')
printf('Ia = %g/_%g A\n',abs(Ia),angle(Ia))
printf('Ib = %g/_%g A\n',abs(Ib),180+angle(Ib))
printf('b) The Secondary Neutral Current = %g/_%g A\n',abs(In),angle(In))
printf('c) The Secondary Voltages are:\n')
printf('Va = %g/_%g V\n',abs(Va),angle(Va))
printf('Vb = %g/_%g V\n',abs(Vb),angle(Vb))
printf('d) The Resultant Secondary Voltage Vab is %g/_%g V\n',abs(Vab),angle(Vab))

//In the TextBook Note That Zb has been taken wrong in the calculattion of Vb
