//Section-1,Example-1,Page no.AC-271
//To calculate the cost of lime and soda required for the softening of hard water.
clc;
A_1=196       //Amount of H2SO4(mg/lt)
A_2=24        //Amount of MgSO4(mg/lt)
A_3=272        //Amount of CaSO4(mg/lt)
V_1=50*100000*(1/10^6)
L_R=(74/100)*((A_1*(100/98))+(A_2*(100/120)))
T_LR=L_R*30
C_L=5        //Cost of Lime(Rs/kg)
C_S=8       //Cost of Soda(Rs/kg)
TC_L=T_LR*C_L*V_1
disp(TC_L,'Total cost of Lime(Rs.)')
C_Soda=(106/100)*((A_1*(100/98))+(A_2*(100/120))+(A_3*(100/136)))*V_1*C_S*30
disp(C_Soda,'Total cost of Soda(Rs.)')







