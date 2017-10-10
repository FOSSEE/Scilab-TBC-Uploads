clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 5.3.3\n')
//given data
m1=500//mass of disc 1 in Kgs
m2=1000//mass of disc 2 in Kgs
D1=1.25//outer dia of disc 1 in m
D2=1.9//outer dia of disc 2 in m
l=3.0//lenght of shaft in m
d=0.10//dia of shaft in m
G=0.83*10^11//rigidity modulus in N/m^2
//calculations
J1=m1*(D1/2)^2/2//mass moment of inertia in kg-m^2
J2=m2*(D2/2)^2/2//mass moment of inertia in kg-m^2
Ip=(%pi/32)*d^4//section modulus of shaft in m^4
Kt=G*Ip/l//stiffness in N-m/rad
Wn=sqrt(Kt*(J1+J2)/(J1*J2))//from Eqn 5.3.28,Sec 5.3.3
fn=Wn/(2*%pi)
Kt1=2*Kt
Kt2=2*Kt*2^4
Kte=1/((1/Kt1)+(1/Kt2))
x=sqrt(Kte/Kt)//ratio of modified natural freq to original natural frequency
//output
mprintf('The natural frequency of the torsional vibration is\n %4.4f rad/sec or %3.3f Hz.\n The ratio of modified natural frequency to original natural frequency\n is %3.3f.Which means stiffening a system increases its natural frequency',Wn,fn,x)
