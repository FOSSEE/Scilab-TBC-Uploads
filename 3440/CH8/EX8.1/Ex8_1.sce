clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.85*10^-14 //F/cm
epsilonm=3.3*10^5 //V/cm
ni=9.65*10^9//cm^-3
ND=2*10^18//cm^-3
b=1*10^-4//cm
W=6*10^-4//cm
Q=2*10^12//charges/cm^2
xA=1*10^-4//cm
vx=10^7//Hz
Vb=(epsilonm*b)+[epsilonm-((q*Q)/(epsilonx*11.9))]*(W-b)
disp(Vb,"Vb in V is= ")
d=([epsilonm-((q*Q)/(epsilonx*11.9))]*(W-b))/(W-b)
disp(d,"drift region in V/cm is= ")
f=vx/[2*(W-xA)]
disp(f,"f in Hz is= ")


