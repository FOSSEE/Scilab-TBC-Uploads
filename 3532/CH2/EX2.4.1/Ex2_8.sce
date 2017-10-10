clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 2.4.1\n')
//given data
l=1 //lenght in m
d=0.005 //dia of rod im m
D=0.2 //dia of dotor in m
M=2 //mass of motor in Kg
G=0.83 *10^11 //modulus of rigidity in N/m^2
//calculations
J=M*((D/2)^2)/2 //mass moment of inertia in Kg-m^2
Ip=(%pi/32)*d^4 //section modulus in m^4
Kt=G*Ip/l //stiffness in N-m/rad
Wn=sqrt(Kt/J) //natural freqency in rad/sec
fn=Wn/(2*%pi) //natural freq in Hz
//output
mprintf(' The natural freqency of vibration of torsional pendulum is %4.4f rad/sec\n or %4.4f Hz',Wn,fn)
mprintf('\nNOTE:In book the natural freqency of vibration of torsional pendulum\nis given as 36 Hz which is wrong.')
