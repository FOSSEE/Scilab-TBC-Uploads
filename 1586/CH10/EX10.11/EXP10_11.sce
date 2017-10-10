clc;funcprot(0);//EXAMPLE 10.11
// Initialisation of Variables
W=123.2;.....//The molecular weight of zirconia (ZrO2) 
W2=285.2;.....//The molecular weight of Yttyium
N1=0.91;....//No. of moles of Zirconia in YSZ
N2=0.09;.....//No. of moles of Yttria in YSZ
Wy=2000;....//Weight of YSZ in g
//CALCULATIONS
M1=N1*W;.......//The mass of 0.91 moles of zirconia in g
M2=N2*W2;.......//The mass of 0.09 moles of Yttria in g
%W1=M1/(M1+M2);.....//The weight fraction of zirconia in this 9 mol.% YSZ material
%W2=1-%W1;....//The weight fraction of yttria in this 9 mol.% YSZ material
Z=Wy*%W1;....//The amount of Zirconia in g
disp(M1,"he mass of 0.91 moles of zirconia in g:")
disp(M2,"The mass of 0.09 moles of Yttria in g:")
disp(%W1,"The mass of 0.91 moles of zirconia in g:")
disp(%W2,"The weight fraction of yttria in this 9 mol.% YSZ material:")
disp(Z,"The amount of Zirconia in g")
