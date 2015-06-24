//Chapter-5, Example 5.24, Page 184
//=============================================================================
clc
clear
//INPUT DATA
L=0.05;//inductance in henry
R2=20;//resistance in ohms
R1=15;//resistance in ohms
V=200;//supply voltage in volts
f=50;//frequency in hz
//CALCULATIONS
//for branch 1
Z1=(R1)+((%i)*(2*%pi*f*L));//impedance in ohms
Y1=inv(Z1);//admittance in branch
I1=V*(Y1);//current in branch
disp(I1);
i1=abs(I1);//magnitude of current
//for branch 2
Y2=1/R2;//admittance in branch
I2=V*Y2;//current in branch
i2=abs(I2);//magnitude of current
I=I1+I2;//total current in A
i=abs(I);//magnitude of total current
theta=atan(imag(I)/real(I));//angle in radians
theta=theta*(180)/(%pi);//angle in degrees
mprintf("Thus current in branch1,branch2 abd total currents are %1.2f A,%d A,%2.2f A respectively\n",i1,i2,i);
mprintf("phase angle of the combination is %2.1f degrees",theta);
//=================================END OF PROGRAM======================================================================================================
