clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 2.3.4\n')
//given data
M=35//mass of flywheel in Kgs
r=0.3/2 //distance of centre of mass from pivot in m
T=1.22 //time period of oscillation in sec
g=9.81//accelaration due to gravity in m/(sec^2)
//concept is as follows
//Jo=mass moment of inertia about pivot, Wn=natural freqency
//thetadd=theta double dot(double differentiation)
//Jo*thetadd=-M*g*r*theta ....sum of moments is = to zero
//Jo*thetadd +(M*g*r*theta)=0
//Wn=sqrt((M*g*r*)/Jo)=2*pi/T
//calculations
Jo=M*g*r/((2*%pi/T)^2)
Jg=Jo-M*r^2 //mass moment of inertia about geometric axis
//output
mprintf('Mass moment of inertia about pivot is %4.4f Kg-m^2\n Mass moment of inertia about geometric axis is %4.4f Kg-m^2',Jo,Jg)
