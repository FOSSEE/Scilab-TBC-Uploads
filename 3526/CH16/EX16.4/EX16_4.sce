clc;funcprot(0);//EXAMPLE 16.4
//page 486
// Initialisation of Variables
W1=116;................//Molecular Weight of Hexamethylene Diamine in g/mol
W2=146;................//Molecular Weight of Adipic Acid in g/mol
W3=18;.................//Molecular Weight of Water in g/mol
W4=120000;.............//Molecular Weight of 6,6-nylon in g/mol
//alculations
M=W1+W2-2*W3;..........//Molecular Weight of the repeated unit
DOP=W4/M;...............//Degree of Polymerization of 6,6-nylon
disp(DOP,"Degree of Polymerization of 6,6-nylon:")
