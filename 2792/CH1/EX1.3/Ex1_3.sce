clc
// silicon has diomond structure which is made up of FCC lattice 
N=4
disp("N = "+string(N)) //initializing value of number of points per cube of volume
A = 5.43*10^-8
disp("A = "+string(A)+"cm^-3") //initializing value of lattice constant of silicon
D = 2
disp("D = "+string(D)+"atoms") //initializing value of number of silicon atoms per lattice point
E1 = N*D/A^3
disp("number density of silicon,Nsi = N*D/A^3)= "+string(E1)+" atomscm^-3")//calculation
//for gallium in GaAs there is 1 Ga atom and 1 As atom as per lattice point , it also has fcc structure
A1 = 5.65*10^-8
disp("A1 = "+string(A1)+"cm^-3") //initializing value of lattice constant of gallium
D1 = 1
disp("D1 = "+string(D1)+"atoms") //initializing value of number of gallium atoms per lattice point
E2 = N*D1/A1^3
disp("number density of gallium atoms,NGa = N*D1/A1^3)= "+string(E2)+" atomscm^-3")//calculation
// using above answer in following part
S1=10*10^-12
disp("S1 = "+string(S1)+" cm^3") //initializing value of dimensions of silicon transistor
N1 = (E1*S1)
disp("number Si atom in silicon transistor,N(Si) = (E1*S1))= "+string(N1)+" atoms")//calculation
S2 = 200*10*5*10^(-12)
disp("S2 = "+string(S2)+" cm^3") //initializing value of dimensions of GaAs semiconductor laser
N2 = (E2*S2)
disp("number of Ga atom in GaAs semiconductor,N(Ga) = (E2*S2))= "+string(N2)+" atoms")//calculation
