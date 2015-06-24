//Section-1,Example-2,Page no.AC-271
//To calculate the cost of lime and soda required for the softening of hard water.
clc;
A_1=25       //Temporary magnesium hardness(mg/lt)
A_2=15        //Permanent magnesium chloride hardness(mg/lt)
A_3=20        //Permanent calcium sulphate hardness(mg/lt)
V_1=30000*(1/10^3)
L_R=(74/100)*((A_1*2*(100/24))+(A_2*(100/95)))*V_1
disp(L_R,'Lime requirement(gm)')
S_L=(106/100)*((A_2*(100/95))+(A_3*(100/136)))*V_1
disp(S_L,'Soda requirement(gm)')
