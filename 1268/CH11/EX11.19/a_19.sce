clc;
disp("Example A.19")
n=100  // in rpm
omega=2*%pi*n/60
r=0.05 // radius in m
u=r*omega // velocity in m/s
gap=0.001 // in m
mew=0.5  // in kg/ms
tau=mew*u/gap
disp(tau,"Shear stress is ")
