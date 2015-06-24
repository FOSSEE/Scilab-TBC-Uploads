//chapter26
//Example 1.1
clc
m=3.1 //mass of copper penny in grams
e=4.6*10^-18 //charge in coulombs
N0=6*10^23 //avogadro's number atoms/mole
M=64 //molecular weight of copper in gm/mole
//Calculation
N=(N0*m)/M;  //No.of copper atoms in penny
q=N*e; //magnitude of the charges in coulombs
disp(q,"magnitude of the charges in coul is")
