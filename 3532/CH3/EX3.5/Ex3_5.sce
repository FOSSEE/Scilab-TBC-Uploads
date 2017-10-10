clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 3.4.1\n')
//given data
J=0.06 //moment of inertia of disc of pendulum in Kg-m^2
G=4.4*10^10 //rigidity modulus in N/m^2
l=0.4 //lenght of shaft in m
d=0.1 //diametre of shaft in m
a1=9 //amplitude of first oscillation in degrees
a2=6 //amplitude of second oscillation in degrees
a3=4 //amplitude of third oscillation in degrees
//calculations
delta=log(a1/a2) //logarithmic decrement eqn 3.4.1 explained in sec 3.4
zeta=delta/sqrt(4*%pi^2+delta^2) //representing zeta from eqn 3.4.1 in sec 3.4
Kt=(G/l)*(%pi/32)*d^4 //(%pi/32)*d^4 is the section modulus
C=zeta*2*sqrt(Kt*J) // torsional damping coefficient which is the damping torque at unit velocity (similar to eqn 3.3.6 in sec 3.3)
Wn=sqrt(Kt/J) // undamped natural freq in rad/sec
T=2*%pi/(sqrt(1-zeta^2)*Wn) //periodic time of vibration 
fn=Wn/(2*%pi) //natural freq of undamped vibration
//output
mprintf(' a)logarithmic decrement is %4.4f\n b)damping torque at unit velocity is %4.4f N-m/rad\n c)periodic time of vibration is %4.5f sec\n frequency of vibration if the disc is removed from viscous fluid is %4.4f Hz',delta,C,T,fn)
