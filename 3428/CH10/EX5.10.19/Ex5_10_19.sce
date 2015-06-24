//Section-5,Example-6,Page no.-D.21
//To find activation energy and rate constant for the given reaction.
clc;
T=1298
R=8.314
E_a=2.303*R*2.50*10^4
disp (E_a,'Activation energy for the given reaction(kJmol^-1)')
k=10^(17.64-((2.50*10^4)/T))
disp(k,'Rate constant for the given reaction(sec^-1)')
