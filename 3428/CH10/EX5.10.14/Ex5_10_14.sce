//Section-5,Example-1,Page no.-D.19
//To find the Activation energy and calculate the Arrhenius frequency factor of the given reaction
clc;
k_1=4*10^-5
T_1=298
k_2=14*10^-5
T_2=303
R=8.314
K=log10((14*10^-5)/(4*10^-5))
E_a=((K*2.303*R)/((303-298)/(303*298)))
disp(E_a,'Activation energy of the given reaction(Jmol^-1)')
A=10^((log10(k_1))+(E_a/(2.303*R*T_1)))
disp(A,'Arrhenius frequency factor of the given reaction(sec^-1)')
