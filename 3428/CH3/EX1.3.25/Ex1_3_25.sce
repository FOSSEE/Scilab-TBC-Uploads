//Section-1,Example-8,Page no.AC-274
//To calculate the amount of lime and soda required for cold softening of given water sample.
clc;
A_1=66       //CO2(ppm)
A_2=264         //HCO3-(ppm)
A_3=36        //Mg2+(ppm)
A_4=95           //Ca2+(ppm)
A_5=10           //NaAlO2(ppm)
A_6=2            //H+(ppm)
A_7=34          //OH-(ppm)
A_8=45           //(CO3)2-(ppm)
V=(125000/10^6)
L_R1=(74/100)*((A_3*(100/24))+(A_2*(100/122))+(A_1*(100/44))-(A_5*(100/164))+(A_6*(100/2)))
S_R1=(106/100)*((A_4*(100/40))+(A_3*(100/24))-(A_2*(100/122))+(A_6*(100/2)))
L_R2=(74/100)*(A_7*(100/34))
S_R2=(106/100)*((A_8*(100/60))+(A_7*(100/34)))
T_LR=(L_R1+L_R2)*V
disp(T_LR,'Lime requirement(kg)')
T_SR=(S_R1+S_R2)*V
disp(T_SR,'Soda requirement(kg)')
