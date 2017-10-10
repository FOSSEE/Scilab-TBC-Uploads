//ques-24.8
//Calculating moles of succinic acid extracted
clc
n=0.025*(100/1000);//moles of succinic acid
K=0.3;//partition coefficient
//x mole of it pass to 10mL of ether layer
//K = ((n-x)/100)/(x/10)
x=n/4;
printf("Moles of succinic acid extracted by ether are %.6f.",x);
