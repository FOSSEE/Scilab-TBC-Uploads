//Exa 6.1
clc;
clear;
close;
//given data :
format('v',5);
Tr=40;//in ns
Tnr=90;//in ns
T=Tr*Tnr/(Tr+Tnr);//in ns
disp(T,"Bulk recombination life-time in nano second : ");
ETAint=(T/Tr)*100;//in %
disp(ETAint,"Internal Quantum Efficiency in % : ") ;