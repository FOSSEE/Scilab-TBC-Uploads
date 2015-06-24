//Section-1,Example-1,Page no.AC-265
//To calculate the amount of lime required for softening of given hard water sample.
clc;
V_1=5000    //Given solution of hard water
A_1=72    //Amount of MgSO4(ppm)
M_F1=100/120        //Multiplication factor
C_Eq= A_1*M_F1      //CaCO3 equivalent
L_R=(74/100)*C_Eq*V_1*10^-3
disp(L_R,'Lime requirement(gm)')
