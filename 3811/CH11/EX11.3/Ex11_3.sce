//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.3
//edition 1
//publishing place:Thomson Learning
clc;
clear;
Ra=2;//armature resistance in ohm
Tst1=2;//limited starting time in sec
Kphi=3;//field constant in V sec
Jm=1;//motor moment of inertia in Nm
Jl=5;//load moment of inertia in Nm
tau=((Jl+Jm)*Ra)/Kphi^(2);
Tst=3*tau;//starting time of the motor based on given data in sec
Jeq=(Tst1*(Kphi^(2)))/(3*Ra);
gr=sqrt((Jeq-Jm)/Jl);//gear ratio n1/n2
mprintf("To achieve the desired starting current the gear ratio n1/n2 must be between %f",gr)
