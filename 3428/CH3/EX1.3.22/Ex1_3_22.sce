//Section-1,Example-5,Page no.AC-272
//To calculate the amount of lime and soda required for the softening of 10000 litres of hard water.
clc;
A_1=219       //Mg(HCO3)2(ppm)
A_2=36         //Mg2+(ppm)
A_3=18.3        //HCO3-(ppm)
A_4=1.5           //H+(ppm)
V=(10000/10^6)
L_R=(74/100)*((2*A_1*(100/146))+(A_2*(100/24))+(A_3*(100/122))+(A_4*(100/2)))*V
disp(L_R,'Actual Lime requirement(kg)')
S_R=(106/100)*((A_2*(100/24))-(A_3*(100/122))+(A_4*(100/2)))*V
disp(S_R,'Soda requirement(kg)')
