//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.5
//edition 1
//publishing place:Thomson Learning
clc;
clear;
Ra=1;//armature resistance in ohm
Kphi=3;//field constant in V sec
Vt=500;//terminal voltage in volt
Td=20;//constant torque of the motor in Nm
J=6;//total moment of inertia of the drive in Nm
omegaf=0;
Vb=(omegaf+((Ra*Td)/Kphi^(2)))*Kphi;
mprintf("\nThe terminal voltage that stop the motor and keep it at holding is %f V",Vb)
tau=(J*Ra)/Kphi^(2);
t=3*tau;//the motor reaches the holding state when speed is 5% of initial speed
mprintf("\nThe traveling time during the braking is %d sec",t)
