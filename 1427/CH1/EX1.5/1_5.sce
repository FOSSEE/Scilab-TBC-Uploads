//ques-1.5
//Calculating amount of lime required
clc
A=25;//content of Calcium carbonate in water (in ppm)
B=144;//content of Magnesium carbonate in water (in ppm)
C=95;//content of Magnesium chloride in water (in ppm)
V=50000;//volume of water given (in L)
a1=(A/100)*100;//CaCO3 equivalent of A (in ppm)
a2=(B/84)*100;//CaCO3 equivalent of B (in ppm)
a3=(C/95)*100;//CaCO3 equivalent of C (in ppm)
lime=(a1+2*a2+a3)*V*(74/100);//lime requirement (in mg)
printf("Lime required for softening is %.3f kg.",lime/1000000);
