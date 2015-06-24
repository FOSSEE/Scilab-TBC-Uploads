clc
// In the (001) surface the top atoms are either Ga or As
//A square of area a^2 has 4 atoms on the edges of square shared by 4 other square and 1 atom in centre
N=2
disp("N = "+string(N)) //initializing value of total number of atoms per square
a = 5.65*10^-8
disp("a = "+string(a)+"cm^-1") //initializing value of lattice constant of gallium
SD = N/(a^2)
disp("surface density of Ga,N(Ga) = N/(a^2))= "+string(SD)+"cm^-2")//calculation

