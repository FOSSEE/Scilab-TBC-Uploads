//ques-1.3
//Calculating temporary and permanent hardness of a sample of water
clc
A=7.3;//content of Magnesium hydrogencarbonate (in mg/L)
B=16.2;//content of Calcium hydrogencarbonate (in mg/L)
C=9.5;//content of Magnesium chloride (in mg/L)
D=13.6;//content of Calcium sulphate (in mg/L)
a1=(A/146)*100;//CaCO3 equivalent of A
a2=(B/162)*100;//CaCO3 equivalent of B
a3=(C/95)*100;//CaCO3 equivalent of C
a4=(D/136)*100;//CaCO3 equivalent of D
t=a1+a2;//temporary hardness (in ppm)
p=a2+a4;//permanent hardness (in ppm)
printf("Temporary and Permanent hardness of the given sample are %d ppm and %d ppm respectively.",t,p);
