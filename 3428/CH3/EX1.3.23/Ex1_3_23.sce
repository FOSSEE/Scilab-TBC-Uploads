//Section-1,Example-6,Page no.AC-273
//To calculate the amount of lime and soda required for the softening of 1 million litres of water.
clc;
A_1=1.5       //H+(ppm)
A_2=396.5         //HCO3-(ppm)
A_3=42.0        //Mg2+(ppm)
A_4=90.00           //Ca2+(ppm)
A_5=14            //FeSO4.7H2O(ppm)
V=(10^6/10^6)
L_R=(74/100)*((A_1*(100/2))+(A_2*(100/122))+(A_3*(100/24))+(A_5*(100/278)))*V*(100/91)
disp(L_R,'Lime requirement(kg)')
S_R=(106/100)*((A_1*(100/2))-(A_2*(100/122))+(A_3*(100/24))+(A_4*(100/40))+(A_5*(100/278)))*V*(100/97.2)
disp(S_R,'Soda requirement(kg)')
