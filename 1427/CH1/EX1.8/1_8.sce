//ques-1.8
//Calculating amount of lime and soda required for softening water
clc
A=7.3;//content of HCl (in mg/L)
B=34.2;//content of Aluminium sulphate (in mg/L)
C=9.5;//content of Magnesium chloride (in mg/L)
V=100000;//volume of water used (in L)
p1=90;//Purity precentage of lime
p2=98;//Purity precentage of soda
e=10;//Percentage of excess chemicals used
a1=(A/73)*100;//CaCO3 equivalent of A (in mg/L)
a2=(B/114)*100;//CaCO3 equivalent of B (in mg/L)
a3=(C/95)*100;//CaCO3 equivalent of C (in mg/L)
lime=(a1+a2+a3)*(74/100)*(1+e/100)*(100/p1)*V;//lime required (in mg)
soda=(a1+a2+a3)*(106/100)*V*(1+e/100)*(100/p2);//soda required (in mg)
printf("Lime required for softening %d L of water is %.3f kg and Soda required is %.3f kg.",V,lime/1000000,soda/1000000);
