clc
a=5*10^-8
disp("a = "+string(a)+" cm") //initializing value of lattice constant.
r=(sqrt(3)*(a/4))
disp("Radius of the atom,r=(sqrt(3)*(a/4)) = "+string(r)) //initializing value of radius of atom for BCC.
v=((4*%pi*(r^3))/3)*2
disp("Volume of the two atoms,v=((4*%pi*(r^3))/3)*2 = "+string(v)) //calcuation.
V=a^3
disp("Total Volume of the cube,V=a^3 = "+string(V)) //calcuation.
Fp=(v*100/V)
disp("Fp(B.C.C)=(v*100/V) = "+string(Fp)+"%")//calculation
