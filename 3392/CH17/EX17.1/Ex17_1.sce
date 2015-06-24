clc
// initialization of variables
clear
E1=200 //GPa
E2=200 //Gpa
v1=0.29
v2=0.29
R1=60 //mm
R11=130 //mm
R2=80 //mm
R22=200 //mm
th=%pi/3
P=4.5 //kN
P=P*10^3
E=E1*10^3
B=1/4*(1/R1+1/R2+1/R11+1/R22)+1/4*((1/R1+1/R2-1/R11-1/R22)^2 - 4*(1/R1-1/R11)*(1/R2-1/R22)*(sin(th)^2))^(1/2)
A=1/4*(1/R1+1/R2+1/R11+1/R22)-1/4*((1/R1+1/R2-1/R11-1/R22)^2 - 4*(1/R1-1/R11)*(1/R2-1/R22)*(sin(th)^2))^(1/2)
Del=2*(1-v1^2)/(E*(A+B))
BAr=B/A
Cb=0.77
Cs=0.724
Ct=0.24
Cg=0.22
Cz=0.53
Cd=2.10
b=Cb*(P*Del)^(1/3)
br=b/Del
S_max=-Cs*br
tau_max=Ct*br
tau_oct=Cg*br
Zs=Cz*b
delta=Cd*P/%pi*((A+B)/br)
printf('Sigma_max = %d MPa',S_max)
printf('\n tau_max = %d MPa',tau_max)
printf('\n tau_oct_max = %d MPa',tau_oct)
printf('\n Zs = %.2f mm',Zs)
printf('\n delta = %.3f mm',delta)
// S_max doesn't match due to round off error


