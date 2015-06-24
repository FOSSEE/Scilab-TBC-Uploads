// Example 5.2.3 
clc;
clear;
n1=1.48;        //refractive index of fiber
n=1;        //refractive index of air
theta=10;   //angle in degree
NA1=0.3;
NA2=0.6
eta_angular1= (16*(n1/n)^2)/((1+(n1/n))^4)*(1-((n*theta*%pi/180)/(%pi*NA1)));   //computing eta angular
eta_angular2= (16*(n1/n)^2)/((1+(n1/n))^4)*(1-((n*theta*%pi/180)/(%pi*NA2)));   //computing eta angular
loss1=-10*log10(eta_angular1);      //computing loss
loss2=-10*log10(eta_angular2);      //computing loss
printf("\nLoss when NA is %.1f is %.2f dB.\nLoss when NA is %.1f is %.2f dB.",NA1,loss1,NA2,loss2);
printf("\nThus we can say that insertion loss is considerably reduced with higher NA.");
