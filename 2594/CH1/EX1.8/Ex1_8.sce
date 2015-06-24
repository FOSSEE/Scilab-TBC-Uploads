clc
a=1
disp("a= "+string(a)) //initializing value of lattice constant(a)=1.
r=((sqrt(3)*a/8))
disp("Radius of the atom,r=(sqrt(3)*a/8) )= "+string(r)) //initializing value of radius of atom for diamond.
v=(((4*%pi*(r^3))/3)*8)
disp("v=(((4*%pi*(r^3))/3)*8) = "+string(v)) //calcuation.
V=a^3
disp("V=a^3 = "+string(V)) //calcuation.
Fp=(v*100/V)
disp("Fp(Diamond)=(v*100/V) = "+string(Fp)+"%")//calculation
