
clc
//solution
//given:
P=50000//N//maximum load is P
f=75//(N/mm^2)//stress is given
pi=3.14
d=sqrt(4*P/(f*pi))//manipulating to get the value of d
//d=diameter of link stock //using relation f=P/A
printf("\n\nThe diameter of link stock is,%f mm\n,",d)


