//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 6
//example 6.7
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ra=2;//armature resistance in ohm
Rf=3;//field resistance in ohm
V=320;//terminal voltage in volt
T=60;//full load torque in Nm
n=600;//motor speed in rpm
mprintf("\nCalculate the field current:")
KC=0.248;//calculated by solving two equations
Ia=sqrt(T/KC);
mprintf("\nThe field current is %f A",Ia)
mprintf("\nCalculate the motor voltage:")
n1=400;
omega1=(2*%pi*n1)/T;
Vt=Ia*(Ra+Rf+(KC*omega1));
mprintf("\nThe motor voltage is %f volt",Vt)
mprintf("\nCalculate the motor speed :")
AR=Ra/Rf;
Ia=sqrt(T/(KC*AR));
w=(V/(KC*AR*Ia))-((Ra+(AR*Rf))/(KC*AR));
n2=(w*T)/(2*%pi);
mprintf("\nThe speed of the motor is %f rpm",n2)
