//ques-24.2
//Calculating mole fraction of ethanol and water in a sample
clc
w=46;//weight of ethanol (in g)
W=100-w;//weight of water (in g)
n=w/46;//moles of ethanol
N=W/18;//moles of water
x=n/(n+N);
printf("The mole farction of ethanol is %.2f and for water is %.2f.",x,1-x);
