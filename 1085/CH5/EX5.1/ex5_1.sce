//Exam:5.1
clc;
clear;
close;
//The probability that a particular quantum state at energy E is filled, is given by
//f(E) =1/(1+exp(E-E_f)/kT)
e=1.6*10^(-19);//charge on the electron
dE=0.5*e;//E-E_f in joule
//0.01=1/(1+exp(x))
//1+exp(x)=100
x=log(99);
k=1.38*10^(-23);//constant
T=dE/(x*k);//temperature
disp(ceil(T),'temperature at which there is one per cent probability that a state with an energy 0.5 eV above the Fermi energy will be occupied by an electron(in K)=');