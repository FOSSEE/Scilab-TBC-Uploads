clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 8.6.1\n')
//given data
E=1.96*10^11//youngs modulus in N/m^2
M=10//mass of rotor in kg
g=9.81//acc due to gravity in m/sec^2
ra=0.12//radius of gyration in m
l=0.3//lenght of steel shaft in m
b=0.06//thickness of rotor in m
I=10*10^-8//moment of inertia of section in m^4
//calculations
r=sqrt((ra^2/2)+(b^2/12))
h=3*(r^2)/l^2//from Eqn 8.6.4 ,Sec 8.6
g1=sqrt((2/h)*((h+1)-sqrt((h+1)^2-h)))//natural frequency,from Eqn 8.6.4 ,Sec 8.6
g2=sqrt((2/h)*((h+1)+sqrt((h+1)^2-h)))//natural frequency,from Eqn 8.6.4 ,Sec 8.6
W1=g1*sqrt(3*E*I/(M*l^3))//from Eqn 8.6.4 ,Sec 8.6
W2=g2*sqrt(3*E*I/(M*l^3))//from Eqn 8.6.4 ,Sec 8.6
Nc1=W1*60/(2*%pi)//critical speed in RPM
Nc2=W2*60/(2*%pi)//critical speed in RPM
//output
mprintf(' The operating speed of 10000 RPM is not near to either of \n the critical speeds i.e %4.4f RPM or %4.4f RPM.\n Therefore the operating speed is safe.',Nc1,Nc2)
