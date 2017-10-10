//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.9
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=6;//number of poles
f=60;//frequency in hertz
Xl=3;//inductive reactance in ohm
Rs=.2;//stator resistance in ohm
X2=2;//rotor reactance in ohm
R2=0.1;//resistance reffered to the stator in ohm
Xm=120;//magnetizing reactance in the linear region in ohm
Xm1=42;//magnetizing reactance in the saturation region in ohm
Td=100;//constant load torque in Nm
n=900;//speed of the motor in rpm
ns=(120*f)/p;//synchronous speed of the machine in rpm
s=(ns-n)/ns;//slip of the machine
//If the machine is in the linear region
rps=ns/60;
omegas=(2*%pi*rps);
Is=sqrt(((Td*s*omegas)*((R2/s)^2+(X2+Xm)^2))/(3*Xm^2*R2));
costheta=0.7;//assumed power factor value
I1rated=(Td*omegas)/(sqrt(3)*V*costheta);
mprintf("\nThe input current if the machine is in the linear region is %f A",I1rated)
//if the machine is in saturation region
Is1=sqrt(((Td*s*omegas)*((R2/s)^2+(X2+Xm1)^2))/(3*Xm^2*R2));
mprintf("\nThe input current if the machine is in the saturation region is %f A",Is1)
