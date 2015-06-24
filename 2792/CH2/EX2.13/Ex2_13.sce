clc
n = 10^17
disp("n = "+string(n)+"cm^-3") //initializing value of free density of electron of GaAs
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and temperature 
Nc = 4.45*10^17
disp("Nc = "+string(Nc)+"cm^-3") //initializing value of effective density of electron
//(we have assumed the valence band energy Ev=0eV as it is not provided in the book)
E1= kBT*((log(n/Nc)))
disp("Ef(B)= kBT*((log(n/Nc)))= "+string(E1)+"eV")//calculation
E2= kBT*((log(n/Nc))+(1/sqrt(8))*(n/Nc))
disp("E(J)= kBT*((log(n/Nc))+(1/sqrt(8))*(n/Nc))= "+string(E2)+"eV")//calculation
//for Boltzmann approximation the carrier concentration and fermi level are related as : Ef = Ec+E1
//for joyce dixon approximation the carrier concentration and fermi level are related as : Ef = Ec+E2
e=E1-E2
disp("The error produced by using boltzmann approx. is  e=E1-E2= "+string(e)+"eV")//calculation
