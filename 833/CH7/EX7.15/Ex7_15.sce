//Caption: Calculate the number of turns needed on each commutating pole
//Exa:7.15
clc;
clear;
close;
p=4//Number of poles
P=125000//Power delievered by generator(in watts)
V=230//Voltage of generator(in volts)
z=240//Armature conductors 
B=0.3//Flux density under the interpolar gap(in weber/m^2)
g=0.01//Interpolar airgap(in m)
a=p//LAP connection
I_a=P/V
F_a=(z*I_a)/(2*a*p)
A=(B*g)/(4*%pi*(10^(-7)))
A_t=A+F_a
T=A_t/I_a
disp(T,'The number of turns on each commutating pole=')