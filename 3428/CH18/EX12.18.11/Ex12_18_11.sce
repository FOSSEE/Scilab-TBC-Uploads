//Section-12,Example-3,Page no.-SS.46
//To determine the structure and the lattice parameter of the material
clc;
//theta(A)(let)=S degrees
//theta(A)=21.5,25,37,45,47,58,68 (in degrees)
//(sin A)^2=(lm^2/4*a^2)(h^2 + k^2 + l^2)
T=0.314/0.178
//T=sin^2_A1/sin^2_A2(structure of material)
h=1
k=1
l=1
s=0.366
//s=sin(A)=0.366
lm=1.54
a=(lm/(2*s))*sqrt(h^2 + k^2 + l^2)
disp(a,'Lattice parameter(in Angstrom)')
