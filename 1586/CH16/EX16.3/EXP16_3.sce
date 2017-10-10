clc;funcprot(0);//EXAMPLE 16.3
// Initialisation of Variables
W1=116;................//Molecular Weight of Hexamethylene Diamine in g/mol
W2=146;................//Molecular Weight of Adipic Acid in g/mol
W3=18;.................//Molecular Weight of Water in g/mol
W=1000;................//Weight of Hexamethylene Diamine in gm
//Calculations
N=W/W1;................//No. of Moles of Hexamethylene Diamine 
X=N*W2;................//Weight of Adipic Acid required
Y=N*W3;................//Weight of Water in gm
N2=W+X-2*Y;.............//Amount of Nylon Produced
disp(N2,"Amount of Nylon Produced:")
