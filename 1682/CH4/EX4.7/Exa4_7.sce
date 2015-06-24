//Exa 4.7
clc;
clear;
close;
//Given data :
P=12000;//in Rs
A1=10000;//in Rs
G=1000;//in Rs
i=18;//in % per annum
n=10;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
PW=-P+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth of the small business in RS. : ");