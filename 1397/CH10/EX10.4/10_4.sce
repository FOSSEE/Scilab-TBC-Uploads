//clc();
clear;
//To estimate the lattice heat capacity
Td1s1=300;       //debye temperature of s1
Td2s2=250;       //debye temperature of s2
Cvs15=0.05;         //heat capacity of s1 at 5k
Cvs2=Cvs15*(Td1s1/Td2s2)^3;
printf("lattice heat capacity of s2 in J/mol-k is");
disp(Cvs2);
Cvs12=Cvs15*(2/5)^3;
printf("lattice heat capacity of s1 at 2k in J/mol-k is");
disp(Cvs12);
