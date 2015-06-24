clc
Ec_Ef=0.2
disp("Ec_Ef = "+string(Ec_Ef)+" eV") //initializing the value of difference in the energy levels.
Nc=2.8*10^19
disp("Nc = "+string(Nc)+" cm^-3")//initializing the value of conduction band concentration.
Na=3*10^16
disp("Na = "+string(Na)+" cm^-3")//initializing the value of acceptor concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV")//initializing the value of thermal voltage at 300K.
Nd=(Nc*(exp(-(Ec_Ef)/(Vt))))+(Na)
disp("Donor concentration,Nd=(Nc*(exp(-(Ec_Ef)/(Vt))))+(Na)= "+string(Nd)+" cm^-3")//calculation


//this is solved problem 2.19 of chapter 2.
