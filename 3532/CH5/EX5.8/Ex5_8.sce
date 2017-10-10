clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 5.7.1\n')
//given data
J1=0.735//moment of inertia of main system in Kg-m^2
Kt1=7.35*10^5//torsional stiffness
To=294//amplitude of applied torque
W=10^3//frequency of applied torque
//u=ratio of absorber mass to main mass i.e M2/M1
//Wn is exitation frequency
//calculations
W1=sqrt(Kt1/J1)
//case1
x1=0.8//where x=(W/W2)
u1=[x1^2-1]^2/x1^2//from Eqn 5.7.9,Sec 5.7.1.
//case 2
x2=1.2//where x=(W/W2)
u2=[x2^2-1]^2/x2^2//from Eqn 5.7.9,Sec 5.7.1.
if u1>u2 then
    u=u1
else
    u=u2
end
J2=u*J1//moment of inertia of absorber in Kg-m^2
Kt2=u*Kt1// total torsional stiffness of absorber 
K=Kt2/(4*0.1^2)//stiffness of each spring in N/m
b2=-(To/Kt2)//amplitude of vibration in rad
//output
mprintf('The maximum moment of inertia of absorber(J2) is %4.4f Kg-m^2 and\n %f is the stiffness of each of the four absorber springs such that\n the resonant frequencies are at least 20 percent from exitation frequency.\n The amplitude of vibration of this absorber(b2) at exitation frequency\n is %f radians',J2,K,b2)
