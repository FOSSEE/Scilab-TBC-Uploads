//chapter 27
//Example 11
clc
//Given
q=1.0*10^-6 //magnitude of two opposite charges of a electric dipole in coul
d=2.0*10^-2 // seperation b/w charges in m
E=1.0*10^5 //external field in nt/coul
//calculations
//(a)Max torque if found when theta=90 degrees
//Torque =pEsin(theta)
p=q*d //electric dipole moment
T=p*E*sin(%pi/2)
disp("(a)Maximum torque exerted by the fied in nt-m is")
disp(T)
//(b)work done by the external agent is the potential energy b/w the positions theta=180 and 0 degree
W=(-p*E*cos(%pi))-(-p*E*cos(0))
disp("(b) work done by the external agent to turn dipole end for end in joule is ")
disp(W)

