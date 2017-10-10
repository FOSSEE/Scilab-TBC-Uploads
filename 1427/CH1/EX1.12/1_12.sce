//ques-1.12
//Calculating amount of lime and soda required for softening hard water
clc
V=2000;//volume of water given (in L)

//Raw water
A=160;//content of Ca cation (in mg/L)
B=72;//content of Mg cation (in mg/L)
C=732;//content of Hydrogen carbonate anion (in mg/L)
D=30;//content of CO2 (in mg/L)
a1=(A/40)*100;//CaCO3 equivalent of A (in ppm)
a2=(B/24)*100;//CaCO3 equivalent of B (in ppm)
a3=(C/122)*100;//CaCO3 equivalent of C (in ppm)
a4=(D/44)*100;//CaCO3 equivalent of D (in ppm)

//Treated water
E=30;//content of Carbonate anion (in mg/L)
F=17;//content of Hydroxide anion (in mg/L)
a5=(E/60)*100;//CaCO3 equivalent of E (in ppm)
a6=(F/34)*100;//CaCO3 equivalent of F (in ppm)

lime=(a2+a3+a4+a6)*(74/100)*V;//lime required (in mg)
soda=(a1+a2-a3+a5)*(106/100)*V;//soda required (in mg)
printf("Lime required for softening of hard water is %.4f kg and Soda required is %.3f kg.",lime/1000000,soda/1000000);
