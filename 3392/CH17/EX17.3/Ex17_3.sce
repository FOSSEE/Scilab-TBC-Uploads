clc
// initialization of variables
clear
E=200 //GPa
v=0.29
R=40 //mm
h=20 //mm
P=24.1 //kN
S_max=1445 //MPa
tau_max=433 //MPa
tau_octM=361 //MPa
//calculations
E=E*10^3
P=P*10^3
Del=2*R*(1-v^2)/E
b=sqrt(2*P*Del/(h*%pi))
br=b/Del
S_maxT=2*b/(9*Del)
S_maxC=-1.13*br
tau_max=0.31*br
tau_octM=0.255*br
printf('Sigma_max (tension) = %d MPa',S_maxT)
printf('\n Sigma_max (compression) = %d MPa',S_maxC)
printf('\n tau_max = %d MPa',tau_max)
printf('\n tau_oct_max = %d MPa',tau_octM)
