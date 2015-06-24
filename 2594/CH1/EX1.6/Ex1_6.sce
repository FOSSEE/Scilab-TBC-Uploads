clc
a=1
disp("a= "+string(a)) //initializing value of lattice constant(a)=1.
r=(a/(2*sqrt(2)))
disp("Radius of the atom,r=(a/(2*sqrt(2)))= "+string(r)) //initializing value of radius of atom for FCC.
v=(((4*%pi*(r^3))/3)*4)
disp("Volume of the four atom,v=(((4*%pi*(r^3))/3)*4) = "+string(v)) //calcuation.
V=a^3
disp("Total volume of the cube,V=a^3 = "+string(V)) //calcuation.
Fp=(v*100/V)
disp("Fp(F.C.C)=(v*100/V) = "+string(Fp)+"%")//calculation
