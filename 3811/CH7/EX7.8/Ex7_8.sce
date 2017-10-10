//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.8
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=2;//number of poles
f=60;//frequency in hertz
fd=50;//decreased frequency in Hz
Xeq=4;//inductive reactance in ohm
R1=0.2;//stator resistance in ohm
R2=0.3;//rotor resistance reffered to stator in ohm
Td=60;//driving constant load torque in Nm
n=3500;//speed of the motor in rpm
VFR=V/f;//voltage frequency ratio
Vnew=fd*VFR;
a=120;//constant value
ns=(a*fd)/p;//synchronous speed in rpm
Vs=V/sqrt(3);
rps=n/60;
omegas=(2*%pi*rps);
s=(Td*omegas*R2)/Vnew^2;
n=ns*(1-s);//the new motor speed at 50Hz in rpm
rpss=ns/60;
omega=(2*%pi*rpss)/60;
mprintf("\nTo compute the starting current at 60Hz,480v:")
I2st=Vs/sqrt((R1+R2)^(2)+Xeq^(2));//starting current in A
mprintf("\nThe starting current at 60Hz,480v is %f A",I2st)
mprintf("\nTo compute the starting current at 50Hz,400v:")
Vsnew=Vnew/sqrt(3);
Xeqnew=(fd/f)*Xeq;//inductive reactance at 50Hz
I2stnew=Vsnew/sqrt((R1+R2)^(2)+Xeqnew^(2));//starting current at 50Hz in A
mprintf("\nThe starting current at 50Hz,400v is %f A",I2stnew)
mprintf("\nThe starting current is almost unchanged due to the v/f control")
