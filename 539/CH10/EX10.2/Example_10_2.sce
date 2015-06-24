//Determination the rate of recrystallization

clear;
clc;

printf("\tExample 10.2\n");
n=5;
y=0.3;
t=100;          //in min


k=-log(1-y)/t^n;

thalf=(-log(1-0.5)/k)^(1/n);

rate=1/thalf;

printf("\nRate is %.2e (min)^-1\n",rate);

//End