clc
disp("for temperature T1=77K")
kBT1=0.0067
disp("kBT1 = "+string(kBT1)+"eV") //initializing value of multiplication of boltzmann constant and temperature T1
n1 = 10^19
disp("n1 = "+string(n1)+"cm^-3") //initializing value of density of electron
Nc1 = 3.34*10^18
disp("Nc1 = "+string(Nc1)+"cm^-3") //initializing value of effective density of electron
Ef1= kBT1*((log(n1/Nc1)))
disp("The fermi level at 77K (using boltzmann static) is ,Ef1(B)= kBT1*((log(n1/Nc1)))= "+string(Ef1)+"eV")//calculation
Ef2= kBT1*((log(n1/Nc1))+(1/sqrt(8))*(n1/Nc1))
disp("The fermi level at 77K (using Joyce-Dixon static) is ,Ef1(J)= kBT1*((log(n1/Nc1))+(1/sqrt(8))*(n1/Nc1))= "+string(Ef2)+"eV")//calculation
disp("for temperature T2=300K")
kBT2=0.026
disp("kBT2 = "+string(kBT2)+"eV") //initializing value of multiplication of boltzmann constant and temperature T2
Nc2 = 2.56*10^19
disp("Nc2 = "+string(Nc2)+"cm^-3") //initializing value of effective density of electron
Ef3= kBT2*((log(n1/Nc2)))
disp("The fermi level at 300K (using boltzmann static) is ,Ef2(B)= kBT2*((log(n1/Nc2)))= "+string(Ef3)+"eV")//calculation
Ef4= kBT2*((log(n1/Nc2))+(1/sqrt(8))*(n1/Nc2))
disp("The fermi level at 300K (using Joyce-Dixon static) is ,Ef2(J)= kBT2*((log(n1/Nc2))+(1/sqrt(8))*(n1/Nc2))= "+string(Ef4)+"eV")//calculation

