//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.2
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=4;//number of poles
f=60;//frequency in hertz
Td=60;//constant torque load in Nm
R1=0.4;
R2=0.1;
Xeq=4;
N1=2;
N2=1;
n=1000;//speed of the motor in rpm
a1=120;
ns=(a1*f)/p;
s=(ns-n)/ns;
R21=R2*(N1/N2)^(2);
theta=atand(Xeq/(R1+(R21/s)));
a=0.05;
b=8;
c=-80.74;
Vi11=(-b+sqrt(8^2-(4*a*c)))/(2*a);//obtained from the equation 0.05Vi^2+8Vi-80.74
Vi12=(-b-sqrt(8^2-(4*a*c)))/(2*a);//obtained from the equation 0.05Vi^2+8Vi-80.74
Vi1=Vi11;//because negative voltage is neglected
Vi=(Vi1*N2)/N1;
c1=122;//calculated constant values of the equation
c2=1.85;//calculated constant values of the equation
I2=(c1-Vi1)/c2;
V1=sqrt(3)*Vi;//line to line injected voltage
mprintf("\nThe magnitude of injected voltage is %f volt",V1)
Pr=3*I2*Vi1*cosd(theta);
mprintf("\nThe power delivered by the source of injected voltage is %f watt",Pr)
//The answers vary due to round off error
