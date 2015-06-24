//Section-1,Example-3,Page no.AC-271
//To calculate the amount of lime and soda required for the softening of hard water.Also calculate the temporary and permanent hardness of water sample.
clc;
A_1=40.5       //Ca(HCO3)2(ppm)
A_2=36.5      //Mg(HCO3)2(ppm)
A_3=30        //MgSO4(ppm)
A_4=34           //CaSO4(ppm)
A_5=27.25       //CaCl2(ppm)
T_H=(A_1*(100/162))+(A_2*(100/146))
disp(T_H,'Temporary hardness(ppm)')
P_H=(A_3*(100/120))+(A_4*(100/136))+(A_5*(100/111))
disp(P_H,'Permanent hardness(ppm)')
V=(20000/10^6)
L_R=(74/100)*((A_1*(100/162))+(A_2*2*(100/146))+(A_3*(100/120)))*V*(100/84)
disp(L_R,'Lime requirement(kg)')
S_L=(106/100)*((A_3*(100/120))+(A_4*(100/136))+(A_5*(100/111)))*V*(100/92)
disp(S_L,'Soda requirement(kg)')
