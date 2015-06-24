clc
clear

//input
n1=420;//number of conductors in armature of a d.c. machine
phi=0.024;//flux produced by each pole in weber
e=250;//desired e.m.f in volts
n2=4;//number of poles of the d.c. machine

//calculations
N=n1/2;//number of conductors per path and there are two parallel paths
//e1= e.m.f induced per conductor=(4*0.024*w)/(2*%pi) where w is the required angular velocity in rad/s
w=e/((n1*(48*10^-3))/(2*%pi));//required angular velocity in rad/s

//output
mprintf('the armature of hte machine must have an angular velocity of %3.0f rad/s',w)
