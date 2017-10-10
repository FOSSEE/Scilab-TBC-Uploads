//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.7
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=2;//number of poles
fst=60;//frequency in hertz
f=50;//decreased frequency in Hz
Xeq=4;//inductive reactance in ohm
R1=0.2;//stator resistance in ohm
R2=0.3;//rotor resistance reffered to stator in ohm
Td=60;//driving constant load torque in Nm
n=3500;//speed of the motor in rpm
ns=(120*f)/p;//synchronous speed in rpm
Vs=V/sqrt(3);
rps=ns/60;
omegas=(2*%pi*rps);
s=(Td*omegas*R2)/V^2;
n=ns*(1-s);//the new motor speed at 50Hz in rpm
mprintf("\nThe new motor speed at 50Hz is %f rpm",n)
I2st=Vs/sqrt((R1+R2)^(2)+Xeq^(2));//starting current in A
Xeqnew=(f/fst)*Xeq;//inductive reactance at 50Hz
I2stnew=Vs/sqrt((R1+R2)^(2)+Xeqnew^(2));//starting current at 50Hz in A
mprintf("\nThe starting current at 50Hz is %f A",I2stnew)
