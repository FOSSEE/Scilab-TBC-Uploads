//ques-24.5
//Calculating Henrys constant
clc
n=2*10^-2/28;//moles of nitrogen
N=1000/18;//moles of water
X2=n/(n+N);
p2=1;//pressure (in atm)
KH=p2/X2;
printf("The value of Henrys constant is %d atm.",KH);
