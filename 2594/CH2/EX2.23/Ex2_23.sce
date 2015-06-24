clc
Nd=1*10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing the value of effective energy density of state.
Ec_Ed=0.045
disp(" Ec_Ed = "+string(Ec_Ed))//initializing the value of donor ionisation level.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV ")//initializing the value of thermal voltage.
Nc=2.8*10^19
disp(" Nc = "+string(Nc)+"cm^-3")//initializing the value of effective density of state of conduction band.
e=2.718
disp("exp = "+string(e))//initializing the value of exponential.
N=(((Nc/Nd)*e^((-(Ec_Ed))/Vt))+1)^-1
disp("Fraction of electron still in the donor state,(nd/(nd+n)=(((Nc/Nd)*e^((-Ec_Ed)/Vt))+1)^-1)= "+string(N))//calculation


//this is solved problem 2.10 of chapter 2.
 

