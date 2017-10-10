clc;funcprot(0);//EXAMPLE 16.2
// Initialisation of Variables
W=28;...............//Molecular weight of Ethylene in g/mol
W1=200000;............//Molecular weight of Benzoyl Peroxide in g/mol
W2=1000;............//Weight of Polyethylene in gm
W3=242;.............//Molecular Weight of Benzoyl Peroxide in g/mol
//Calculations
DP=W1/W;..............// Degree of Polymerization 
n=(W2*6.02*10^23)/W;..............//No. of Monomers present 
M=n/DP;......................//NO. of Benzoyl Peroxide Molecules to be present
Ai=(M*W3)/6.02*10^23;............//Amount of Initiator needed in gm
disp(DP,"Degree of Polymerization :")
disp(n,"No. of Monomers present :")
disp(M,"NO. of Benzoyl Peroxide Molecules to be present:")
disp(Ai,"Amount of Initiator needed in gm:")
