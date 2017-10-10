//ques-1.9
//Calculating amount of lime and soda required to soften one million litres of water
clc
A=30;//content of Calcium cation (in mg/L)
B=24;//content of Magnesium cation (in mg/L)
C=24;//content of CO2 (in mg/L)
D=50;//content of HCl (in mg/L)
V=1000000;//volume of water sample (in L)
p1=90;//Purity percentage of lime
p2=94;//Purity percentage of soda
a1=(A/40)*100;//CaCO3 equivalent of A (in mg/L)
a2=(B/24)*100;//CaCO3 equivalent of A (in mg/L)
a3=(C/44)*100;//CaCO3 equivalent of A (in mg/L)
a4=(D/73)*100;//CaCO3 equivalent of A (in mg/L)
lime=(a2+a3+a4)*(74/100)*V*(100/p1);//lime required (in mg)
soda=(a1+a2+a4)*(106/100)*V*(100/p2);//soda required (in mg)
printf("Lime required to soften one mllion litres of given water is %.1f kg and Soda required is %.1f kg.",lime/1000000,soda/1000000);
