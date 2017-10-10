clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 8.2.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
m=5//mass of rotor in kg
d=0.01//dia of shaft in m
I=(%pi/64)*d^4///moment of area in m^4
l=0.4//bearing span in m
e=0.02//distance of CG away from geometric centre of rotor in mm
N=3000//speed of shaft in RPM
//calculations
k=48*E*I/l^3//stiffness of shaft in N/m
Wn=sqrt(k/m)
W=2*%pi*N/60
bet=(W/Wn)
r=(bet^2*e/(1-bet^2))//from Eqn 8.2.2 in Sec 8.2 
rabs=abs(r)//absolute value of displacement
Rd=k*rabs/1000//total dynamic load in bearings in N(divide by 1000 since r is in mm)
F=Rd/2//dynamic load on each bearings in N
//output
mprintf(' The amplitude of steady state vibration of shaft is %f mm\nNOTE:negetive sign shows that displacement is out of phase with centrifugal force\nThe dynamic force transmtted to the bearings is %4.4f N\n The dynamic load on each bearing is %4.4f N',r,Rd,F) 
