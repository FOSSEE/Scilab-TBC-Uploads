clc
// initialization of variables
clear
E=2*10^6 // kg/cm^2
G=8*10^5 // kg/cm^2
ep=[0.001 0 -0.002
    0 -0.003 0.0005
    -0.002 0.0005 0]
// calculations
nu=E/(2*G)-1
lambda=E*nu/((1+nu)*(1-2*nu))
mu=G
sigma(1,1)=2*mu*ep(1,1)+lambda*(ep(1,1)+ep(2,2)+ep(3,3))
sigma(2,2)=2*mu*ep(2,2)+lambda*(ep(1,1)+ep(2,2)+ep(3,3))
sigma(3,3)=2*mu*ep(3,3)+lambda*(ep(1,1)+ep(2,2)+ep(3,3))
tau(1,2)=2*mu*ep(1,2)
tau(1,3)=2*mu*ep(1,3)
tau(2,3)=2*mu*ep(2,3)
tau=[sigma(1,1) tau(1,2) tau(1,3)
     tau(1,2) sigma(2,2) tau(2,3)
     tau(1,3) tau(2,3) sigma(3,3)]
// results
printf('The lames constants are %.e and %.e kg/cm^2',lambda,mu)
printf('\n The stres tensor is')
disp(tau)     

