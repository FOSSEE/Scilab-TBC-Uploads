//Chapter 4, Exmaple 3, page 140
//Claculate size of developed avalanche
clc
clear
a = 4*10**4
b = 15*10**5
//Rewriting equation 4.2
x0=0;x1=0.0005;
X=integrate('a-b*sqrt(x)','x',x0,x1);
As = exp(X) // Avelanche size
printf("\n Avalanche size = %f m",As)
 
//Answers may vary due to round of error
