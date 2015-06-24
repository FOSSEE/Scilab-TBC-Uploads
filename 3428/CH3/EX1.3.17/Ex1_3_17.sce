//Section-1,Example-2,Page no.AC-266
//To calculate the amount of lime required for softening of given hard water sample.
clc;
C_Eq1=144*(100/146)       //CaCO3 equi.of Mg(HCO3)2
C_Eq2=25*(100/162)        //CaCO3 equi.of Ca(HCO3)2
C_Eq3=95*(100/95)         //CaCO3 equi.of MgCl2
V_1=5000    //Given solution of hard water
L_R=(74/100)*(2*C_Eq1+C_Eq2+C_Eq3)*V_1*10^-5
disp(L_R,'Lime requirement(kg)')
