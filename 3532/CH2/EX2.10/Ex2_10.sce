clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 2.5.2\n')
//given data
G=0.83*10^11//rigidity modulus in N/m^2
J=14.7 //mass moment of inertia in kg-m^2
l1=0.6 //lenght of section 1 in m
l2=1.8 //lenght of section 2 in m
l3=0.25 //lenght of section 3 in m
d1=0.05 //dia of section 1 in m
d2=0.08 //dia of section 2 in m
d3=0.03 //dia of section 3 in m
//calculations
Kt1=(G/l1)*(%pi/32)*d1^4 //(%pi/32)*d^4 is the section modulus
Kt2=(G/l2)*(%pi/32)*d2^4
Kt3=(G/l3)*(%pi/32)*d3^4
Kt=1/((1/Kt1)+(1/Kt2)+(1/Kt3)) //total effective stiffness of the torsional system
Wn=sqrt(Kt/J)//natural freq in rad/sec
fn=Wn/(2*%pi) //natural freq in Hz
//output
mprintf(' The natural frequency of torsional oscillation for the given system is\n %4.4f rad/sec or %4.4f Hz.',Wn,fn)
mprintf('\nNOTE:Since the value of Kt in the textbook has been rounded of\n   to 3 decimal places,the final answer varies slightly.')
