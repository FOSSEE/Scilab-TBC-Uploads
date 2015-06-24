clc
A1=27
disp("A1 = "+string(A1)+"amu") //initializing value of atomic mass of alluminium
AV = 6.023*10^23
disp("AV = "+string(AV)) //initializing value of avagadro number
N = 13
disp("N = "+string(N)) //initializing value of number of electrons of alluminium per atom
P1 = 2.7
disp("P1 = "+string(P1)+"gcm^-3") ////initializing value of density of alluminium
E1=AV*(N*P1/A1)
disp("Electrons density of alluminium,n(Al)=AV*(N*P1/A1))= "+string(E1)+" cm^-3")//calculation
A2=12
disp("A2 = "+string(A2)+"amu") //initializing value of atomic mass of carbon
N1 = 6
disp("N1 = "+string(N1)) //initializing value of number of electrons of carbon per atom
P2 = 3.515
disp("P2 = "+string(P2)+"gcm^-3") ////initializing value of density of carbon
E2=AV*(N1*P2/A2)
disp("Electrons density of carbon,n(C)=AV*(N1*P2/A2))= "+string(E2)+" cm^-3")//calculation
A3=28
disp("A3 = "+string(A3)+"amu") //initializing value of atomic mass of silicon
N2 = 14
disp("N2 = "+string(N2)) //initializing value of number of electrons of silicon per atom
P3 = 2.33
disp("P3 = "+string(P3)+"gcm^-3") ////initializing value of density of silicon
E3=AV*(N2*P3/A3)
disp("Electrons density of silicon,n(Si)=AV*(N2*P3/A3))= "+string(E3)+" cm^-3")//calculation
//using Drudes approach
disp("using Drudes approach")
Zc1=3
disp("Zc1 = "+string(Zc1)) ////initializing value of valence electron of alluminium atom
E4=AV*(Zc1*P1/A1)
disp("Electrons density of alluminium,n(Al)=AV*(Zc1*P1/A1))= "+string(E4)+" cm^-3")//calculation
Zc2=4
disp("Zc2 = "+string(Zc2)) ////initializing value of valence electron of carbon atom
E5=AV*(Zc2*P2/A2)
disp("Electrons density of carbon,n(C)=AV*(Zc2*P2/A2))= "+string(E5)+" cm^-3")//calculation
Zc3=4
disp("Zc3 = "+string(Zc3)) ////initializing value of valence electron of silicon atom
E6=AV*(Zc3*P3/A3)
disp("Electrons density of silicon,n(Si)=AV*(Zc3*P3/A3))= "+string(E6)+" cm^-3")//calculation
