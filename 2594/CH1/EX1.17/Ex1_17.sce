clc
a=5*10^-8
disp("a= "+string(a)+"cm") //initializing value of lattice constant.
N=2
disp("N= "+string(N)) //initializing value of no.of atoms in unit cell.
V=a^3
disp("V=a^3 = "+string(V)+"cm^3") //initializing value of total Volume of the unit cell.
na =(N/(V))
disp("na=(no.of atoms in unit cell/Volume of the unit cell) =(N/(V))= "+string(na))//calculation
