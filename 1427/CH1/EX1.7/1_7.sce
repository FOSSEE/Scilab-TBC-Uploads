//ques-1.7
//Calculating amount of lime and soda required for softening hard water
clc
A=20;//content of Calcium cation (in ppm)
B=18;//content of Magnesium cation (in ppm)
C=183;//content of Hydrogen carbonate anion (in ppm)
a1=(A/40)*100;//CaCO3 equivalent of A (in ppm)
a2=(B/24)*100;//CaCO3 equivalent of B (in ppm)
a3=(C/122)*100;//CaCO3 equivalent of C (in ppm)
lime=(a2+a3)*(74/100);//lime required (in ppm)
soda=(a1+a2-a3)*(106/100);//soda required (in ppm)
//soda < 0, therefore
printf("Lime required for softening hard water is %.1f ppm and Soda required is nil.",lime);
