//ques-1.4
//Calculating temporary and total hardness in given sample of water
clc
A=73;//content of Magnesium hydrogencarbonate (in mg/L)
B=162;//content of Calcium hydrogencarbonate (in mg/L)
C=95;//content of Magnesium chloride (in mg/L)
D=136;//content of Calcium Sulphate (in mg/L)
a1=(A/146)*100;//CaCO3 equivalent of A (in mg/L)
a2=(B/162)*100;//CaCO3 equivalent of B (in mg/L)
a3=(C/95)*100;//CaCO3 equivalent of C (in mg/L)
a4=(D/136)*100;//CaCO3 equivalent of D (in mg/L)
temp=a1+a2;//temporary hardness (in ppm)
total=a1+a2+a3+a4;//total hardness (in ppm)
printf("Temporary hardness of given sample is %d ppm and Total hardness is %d ppm.",temp,total);
