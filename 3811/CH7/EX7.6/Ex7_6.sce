//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.6
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=2;//number of poles
f=60;//frequency in hertz
Xeq=4;//inductive reactance in ohm
R1=0.2;//stator resistance in ohm
R2=0.3;//rotor resistance reffered to stator in ohm
Td=60;//driving constant load torque in Nm
n=3500;//speed of the motor in rpm
a=120;//constant value
ns=(a*f)/p;//synchronous speed in rpm
mprintf("\nTo compute the maximum frequency of the supply voltage:")
Tmax=Td;
rpss=ns/60;
omegas=(2*%pi*rpss);
fmax=sqrt((V^2*f^2)/(Tmax*2*omegas*4));
mprintf("\nThe maximum frequency of the supply voltage is %f Hz",fmax)
mprintf("\nTo calculate the motor current at f and fmax:")
s=(ns-n)/ns;//slip at 60Hz
Vs=V/sqrt(3);
I2=Vs/sqrt((R1+(R2/s))^2+Xeq^2);
mprintf("\nThe motor current at 60 Hz is %f A",I2)
Xeqmax=(fmax/f)*Xeq;
smax=R2/sqrt(R1^2+Xeqmax^2);
nmax=((a*fmax)/p)*(1-smax);
I2max=Vs/sqrt((R1+(R2/smax))^2+Xeqmax^2);
mprintf("\nThe motor current at 67.7Hz is %f A",I2max)
mprintf("\nTo calculate the power delivered to the load at f and fmax:")
rps=n/60;
omega=(2*%pi*rps);
Pd=Td*omega;//developed power at 60Hz
Pd=Pd*10^(-3);//developed power in kilowatt
mprintf("\nThe power delivered to the load at 60Hz is %f Kw",Pd)
rpsmax=nmax/60;
omegamax=(2*%pi*rpsmax);
Pdmax=Td*omegamax;//developed power at 67.7Hz
Pdmax=Pdmax*10^(-3);//developed power in kilowatt
mprintf("\nThe power delivered to the load at 67.7Hz is %f Kw",Pdmax)
