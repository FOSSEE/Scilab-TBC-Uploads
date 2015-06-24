//Chapter-5, Example 5.27, Page 187
//=============================================================================
clc
clear
//INPUT DATA
V=200;//voltage in volts
f=50;//frequency in hz
R1=10;//resistance in ohms
L1=0.0023;//inductance in henry
R2=5;//resistance in ohms
L2=0.035;//inductance in henry
//CALCULATIONS
Xl1=(2*%pi*f*L1);//inductive reactance in branch 1 in ohm
Xl2=(2*%pi*f*L2);//inductive reactance in branch 2 in ohm
Y1=inv(10+(%i*7.23));//admittance of branch 1 in mho
Y2=inv(5+(%i*10.99));//admittance of branch 2 in mho
Y=Y1+Y2;//total admittance in mho
I1=V*(Y1);//current through branch1
I2=V*(Y2);//current through branch2
I=I1+I2;//total current in A
theta=atan(imag(I)/real(I));//angle in radians
pf_of_combination=cos(theta);//powerfactor---->lagging
mprintf("Thus currents in branch1,branch2 and total current are %2.1f A,%2.1f A and %2.2f A respectively\n",abs(I1),abs(I2),abs(I));
mprintf("pf of combination is %1.3f",pf_of_combination);
//=================================END OF PROGRAM======================================================================================================
