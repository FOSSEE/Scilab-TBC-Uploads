//example 6.5

clear;
clc;

//Given:
b=0.0391;//Van der waals constant[dm3/mol]
R=0.082;//Universal gas constant[dm3*atm/mol]
P2=1000;//pressure [atm]
P1=0;//pressure [atm]
T=1273;//Temperature [K]

//To find the fugacity and fugacity coefficient
x=b*(P2-P1);
y=R*T;
fc=exp(x/y);//fugacity coefficient

f=P2*fc;//fugacity[atm]
printf("The fugacity is %f atm",f);
printf("\n The fugacity coefficient is %f ",fc);






