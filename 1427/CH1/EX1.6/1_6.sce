//ques-1.6
//Calculating amount of lime and soda required
clc
A=8.1;//content of Calcium hydrogencarbonate (in mg/L)
B=7.5;//content of Magnesium hydrogencarbonate (in mg/L)
C=13.6;//content of Calcium sulphate (in mg/L)
D=12;//content of Magnesiu sulphate (in mg/L)
E=2;//content of Magnesium chloride (in mg/L)
V=50000;//volume of water sample given (in L)
a1=(A/162)*100;//CaCO3 equivalent of A (in mg/L)
a2=(B/146)*100;//CaCO3 equivalent of B (in mg/L)
a3=(C/136)*100;//CaCO3 equivalent of C(in mg/L)
a4=(D/120)*100;//CaCO3 equivalent of D (in mg/L)
a5=(E/95)*100;//CaCO3 equivalent of E (in mg/L)
lime=(a1+2*a2+a4+a5)*(74/100)*V;//lime required (in mg)
soda=(a3+a4+a5)*(106/100)*V;//soda required (in mg)
printf("Lime and Soda required for %d L are %.4f kg and %.4f kg repectively.",V,lime/1000000,soda/1000000);   
