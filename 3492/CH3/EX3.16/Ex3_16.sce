clc
//Chapter3
//Ex_16
//Given
h=6.6*10^-34 //in J s
e=1.6*10^-19 // in coulombs
E1=13.6 //in eV
E1=E1*e //in J
Z=1
n1=109
n2=110
ao=52.918*10^-12 // in m
v=Z^2*E1*((1/n1^2)-(1/n2^2))/h
disp(v*10^-6,"Frequency of radiation in MHz is")
disp("The frequency of radiation in the transition from n1=109 to n2=110 is same as that of the detected frequency .Hence, the radiation comes from excited hydrogen atoms in the give transition")
x=2*n2^2*ao
disp(x*10^6,"The sie of the atom in micro meter is")
//slight difference in the answer is due to approximations
