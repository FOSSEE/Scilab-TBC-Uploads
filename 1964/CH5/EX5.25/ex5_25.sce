//Chapter-5, Example 5.25, Page 185
//=============================================================================
clc
clear
//INPUT DATA
L=6;//inductance in millihenry
R2=50;//resistance in ohms
R1=40;//resistance in ohms
C=4;//capacitance in uf
V=100;//voltage in volts
f=800;//frequency in hz
//CALCULATIONS
Xl=(2*%pi*f*L*10^-3);//inductive reactance in ohms
Xc=1/(2*%pi*f*C*10^-6);//capacitive reactance in ohms
Y1=inv((R1)+(%i*Xl));//admittance of branch1 in mho
Y2=inv((R2)-(%i*Xc));//admittance of branch2 in mho
I1=V*(Y1);//current in branch 1
I2=V*(Y2);//current in branch 2
I=I1+I2;//total curremt in A
theta=(atan(imag(I1)/real(I1))-atan(imag(I2)/real(I2)));
theta=theta*180/%pi;//angle in degrees
mprintf("Thus total current taken from supply is %2.2f\n",abs(I));
mprintf("phase angle between currents of coil and capacitor is %2.2f degrees",theta);
//=================================END OF PROGRAM======================================================================================================
