
// Ex2_20
clc;

// Given:
E=1.6*14.4*10^3*10^-19;// energy in J
c=3*10^8;// in m/s
m=57*1.6*10^-27;
M=10^-4;
h=6.6262*10^-34;// in J.s
// Solution:
p=E/c;
v=p/m;
v1=(v*m)/(M);
v2=(v*m)/(M*10^-20);
f1=(E*v)/(h*c);
f2=(E*v1)/(h*c*10^-10);
printf("\n The recoil velocity of free atom is = %f m/s",v)
printf("\n The recoil velocity of atom that is part of crystal in 10^-20 = %f m/s",v2)
printf("\n The doppler shift for free atom is = %f Hz",f1)
printf("\n The doppler shift of atom that is part of crystal in 10^-10 Hz is = %f",f2)
