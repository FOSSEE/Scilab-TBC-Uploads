clc
//initialisation of variables
mus= 0.25
d= 0.5 //in
h= 3 //in
//CALCULATIONS
A=[1 -1;mus mus]
b= [0;1]
c= A\b
Na= c(1,1)
Nb= c(2,1)
d= -d*mus*Na+h*Na
//RESULTS
printf ('minimu distance= %.2f in',d)
