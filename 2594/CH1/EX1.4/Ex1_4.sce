clc
a=1
disp("a= "+string(a)) //initializing value of lattice constant(a)=1.
r=a/2
disp("r=a/2 = "+string(r)) //initializing value of radius of atom for simple cubic.
v=((4*%pi*(r^3))/3)
disp("Volume of one atom ,v=((4*%pi*(r^3))/3) = "+string(v)) //calcuation.
V=a^3
disp("Total Volume of the cube,V=a^3 = "+string(V)) //calcuation.
Fp=(v*100/V)
disp("Fp(S.C)=(v*100/V) = "+string(Fp)+"%")//calculation
