//Example 26.1(a)
clc
T=1;
tau=1.25;
b=exp(-T/tau)
//For quarter decay ratio
alpha=0.5
K=(alpha+b)/(1-b)
//Ultimate value of C is
Ci=K/(K+1);
disp(Ci,'C(inf)=')
Ri=1;
Offset=Ri-Ci
Period=2*T
