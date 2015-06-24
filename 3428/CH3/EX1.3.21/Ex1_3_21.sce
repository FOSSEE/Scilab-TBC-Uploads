//Section-1,Example-4,Page no.AC-272
//To calculate the amount of lime and soda required for the softening of 100000 litres of hard water.
clc;
A_1=7.3       //HCl(ppm)
A_2=34.2         //Al2(SO4)3(ppm)
A_3=9.5        //MgCl2(ppm)
A_4=29.25           //NaCl(ppm)

V=(100000/10^6)
L_R=(74/100)*((A_1*(100/73))+(A_2*(100/114))+(A_3*(100/95)))*V
Lime_R=L_R*(100/90)*(110/100)
disp(Lime_R,'Actual Lime requirement(kg)')
S_R=(106/100)*((A_1*(100/73))+(A_2*(100/114))+(A_3*(100/95)))*V
Soda_R=S_R*(100/98)*(110/100)
disp(Soda_R,'Actual Soda requirement(kg)')
