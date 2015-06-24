//Section-1,Example-9,Page no.AC-275
//To calculate the amount of lime and soda required per hour.
clc;
A_1=22       //CO2(ppm)
A_2=46.36         //HCO3-(ppm)
A_3=30        //Mg2+(ppm)
A_4=70           //Ca2+(ppm)
A_5=1.5         //Free acidity(H+)(ppm)
A_6=13.9       //FeSO4.7H2O(ppm)
V=(5000/10^6)
L_R=(74/100)*((A_3*(100/24))+(A_2*(100/122))+(A_1*(100/44))+(A_5*(100/2))+(A_6*(100/278)))*V*60*(100/80)
disp(L_R,'Lime requirement(kg/hr)')
S_R=(106/100)*((A_4*(100/40))+(A_3*(100/24))-(A_2*(100/122))+(A_5*(100/2))+(A_6*(100/278)))*V*60*(100/98)
disp(S_R,'Soda requirement(kg/hr)')
