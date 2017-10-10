clc;
f=50;
V=440;
P=4;
N=1490; //Rated speed
N1=1600; //New Speed

Ns=(120*f)/P;
s=(Ns-N)/Ns;
//With neglecting resistances and leakage reactances
//Torque is directly proportional to s/(fr2)
//Appllying the condition for same torque we get
//a=s/f
a=(s/f);
//Ns/s=b
b=120/P;
//s=(Ns-N1)/Ns
//Using above equation we get equation (f*f)-7500f-400000
Q=[1 -7500 400000]
R=roots(Q);
f1=R(2);
mprintf('Value of new Frequency is %f Hz',f1);
























