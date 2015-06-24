//Section-1,Example-7,Page no.AC-273
//To calculate the amount of lime and soda required for the softening of 300000 litres of water.
clc;
A_1=34       //CO2(ppm)
A_2=403         //HCO3-(ppm)
A_3=96        //Mg2+(ppm)
A_4=160           //Ca2+(ppm)
A_5=20           //NaAlO2(ppm)
V=(3*10^5/10^6)
L_R=(74/100)*((A_3*(100/24))+(A_2*(100/122))+(A_1*(100/44))-(A_5*(100/164)))*V
disp(L_R,'Lime requirement(kg)')
S_R=(106/100)*((A_4*(100/40))+(A_3*(100/24))-(A_2*(100/122)))*V
disp(S_R,'Soda requirement(kg)')
