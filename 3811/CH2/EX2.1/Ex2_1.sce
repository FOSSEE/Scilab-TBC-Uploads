//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi 
//chapter 2
//example 2.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Ic=10;//collector current in ampere
beta1=200; // current gain in the linear region
beta2=10; //current gain in the saturation region
Ib1=(Ic/beta1); //base current in the linear region in ampere
Ib2=(Ic/beta2); //base current in the saturation region in ampere
disp(Ib1,'The base current in the linear region in ampere is')
disp(Ib2,'The base current in the saturation region in ampere is')
