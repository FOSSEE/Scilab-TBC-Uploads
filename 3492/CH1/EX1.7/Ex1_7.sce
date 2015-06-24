clc
//Chapter1
//Ex_1.7
//Given
n=4
M_at=63.55*10^-3//Kg/mol
NA=6.022*10^23 //mol^-1
R=0.128// in nm
c=8 //no.of cornersof unit cells
f=6 //no.of faces of unit cells
//a
N=c*(1/8)+f*(1/2)
disp(N,"No. of atoms per unit cells is")
//b
//Lattice parameter 
a=R*2*2^(1/2)
disp(a,"Lattice Parameter in nm is")
a=a*10^-9 //in m
//c
//APF=(No.of atoms in unit cell)*(Vol. of atom)/(Vol. of unit cell)
APF=4^2*%pi/(3*(2*sqrt(2))^3)
disp(APF,"Atomic Packing Factor is")
//d
p=n*M_at/(a^3*NA) //density 
disp(p,"density of Copper in Kg/m3 is")
