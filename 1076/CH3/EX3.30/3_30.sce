clear;
clc;

f=50;
l=200;
Z=complex(14.1, 51.48);
Y=complex(0, 1.194e-3);
g=sqrt(Z*Y);

b=imag(g)/l;
wl=2*%pi/b;
v=f*wl
mprintf("\nwavelength = %.4f*1e3 km",wl*1e-3);
mprintf("\nVelocity of Propagation = %.2f*1e5 km/sec",v*1e-5);
