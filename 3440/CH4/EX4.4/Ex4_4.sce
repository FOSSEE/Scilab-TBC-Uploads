clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
Ege=1.62
Egb=1.42
Nb=10^15
//beta0HBT/beta0BJT=a
a=exp((Ege-Egb)/(k*T))
disp(a,"beta0HBT/beta0BJT =")    //since the k*T value has taken as 0.025851 so the ans changes in last two digits
Nb1=Nb*a
disp(Nb1,"Nb1 in cm^-3=")     //since the ans differs in"a" so Nb1 changes
