//ques-1.10
//Calculating Total hardness and Alkalinity and Lime and Soda required for softening hard water
clc
A=30;//content of Calcium cation (in mg/L)
B=18;//content of Magnesium cation (in mg/L)
C=11;//content of Co2 (in mg/L)
D=122;//content of Hydrogen carbonate anion (in mg/L)
a1=(A/40)*100;//CaCO3 equivalent of A (in mg/L)
a2=(B/24)*100;//CaCO3 equivalent of A (in mg/L)
a3=(C/44)*100;//CaCO3 equivalent of A (in mg/L)
a4=(D/122)*100;//CaCO3 equivalent of A (in mg/L)
total=a1+a2;//total hardness (in ppm)
alk=a4-a3;//alkalinity (in ppm)
lime=(a2+a3+a4)*(74/100);//lime required (in ppm)
soda=(a1+a2-a4)*(106/100);//soda required (in ppm)
printf("Total Hardness of sample is %d ppm and alkalinity present is %d ppm.\n",total,alk);
printf(" Lime required to soften given water sample is %d ppm and Soda required is %d ppm.",lime,soda);
