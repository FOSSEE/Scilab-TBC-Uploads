clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 8.3.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
m=4//mass of rotor in kg
g=9.81//acc due to gravity in m/sec^2
d=0.009//dia of shaft in m
I=(%pi/64)*d^4///moment of area in m^4
l=0.48//bearing span in m
e=0.003//distance of CG away from geometric centre of rotor in mm
N=760//speed of shaft in RPM
c=49//equivalent viscous damping in N-sec/m
//calculations
K=48*E*I/l^3//stiffness of shaft in N/m
Wn=sqrt(K/m)
W=2*%pi*N/60
bet=(W/Wn)
zeta=c/(2*sqrt(K*m))
r=e*(bet^2/sqrt(((1-bet^2)^2+(2*zeta*bet)^2)))//from Eqn 8.3.4 ,Sec 8.3
Fd=sqrt((K*r)^2+(c*W*r)^2)//dynamic load on bearing in N
Fs=m*g//static load in N
Fmax=Fd+Fs//maximum static load on the shaft under dynamic condition in N
smax=(Fmax*l/4)*(d/2)/I//maximum stress under dynamic condition in N/m^2
ss=(Fs*l/4)*(d/2)/I//maximum stress under dead load condition in N/m^2
Fdamp=(c*W*r)//damping force in N
Tdamp=Fdamp*r//damping torque in N-m
P=2*%pi*N*Tdamp/60//power in Watts
//output
mprintf(' The mamximum stress in the shaft under dynamic condition is %.3f N/(m^2)\n The dead load stress is %.3f N/(m^2)\n The power required to drive the shaft at 760 RPM is %4.4f Watts',smax,ss,P)
