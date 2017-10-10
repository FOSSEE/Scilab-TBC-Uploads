//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.4
//edition 1
//publishing place:Thomson Learning
clc;
clear;
Ra=1;//armature resistance in ohm
Kphi=3;//field constant in V sec
Vt=500;//terminal voltage in volt
Vf=600;//increased motor voltage in volt
Td=20;//constant torque of thmotor in Nm
J=6;//total moment of inertia of the drive in Nm
omega0=(Vt/Kphi)-((Ra*Td)/Kphi^(2));//initial speed in rad/sec
omegaf=(Vf/Kphi)-((Ra*Td)/Kphi^(2));//final speed in rad/sec
tau=(J*Ra)/Kphi^(2);
t=-(tau*log((0.05*omegaf)/(omegaf-omega0)));//obtained from the equation of omega=omega(f)(1-e^-t/tau)+omega(0)e^-t/tau
mprintf("The time required to change the motor speed is %f sec",t)
