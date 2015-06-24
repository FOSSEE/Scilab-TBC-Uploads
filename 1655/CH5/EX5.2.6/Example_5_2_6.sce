// Example 5.2.6  page 5.8

clc;
clear;

n1=1.47;        //refractive index of fiber
n=1;        //refractive index of air
theta=3;   //angle in degree
d=80d-6;    //core diameter
y=2d-6;     //lateral dispalcement
delta=2/100;    //relative refractive index

a=d/2;      //computing core radius
eta_lateral = (16*(n1/n)^2)/(%pi*(1+(n1/n))^4)*(2*acos(y/(2*a))-(y/a)*(1-(y/(2*a))^2)^0.5);     //computing eta lateral
loss_lateral=-10*log10(eta_lateral);    //computing loss due to lateral misalignment
eta_angular= (16*(n1/n)^2)/((1+(n1/n))^4)*(1-((n*theta*%pi/180)/(%pi*n1*(sqrt(2*delta)))));     //computing eta angular
loss_angular=-10*log10(eta_angular);   //computing loss due to angular misalignment
total_loss=loss_lateral+loss_angular;   //computing total loss due to misalignment
printf("\nloss due to lateral misalignment is %.2f dB.\nloss due to angular misalignment is %.2f dB.\nTotal loss is %.2f dB",loss_lateral,loss_angular,total_loss);

//answer in the book for loss due to lateral misalignment is 0.48 dB, deviation of 0.02.
//answer in the book for total loss due is 1.05 dB, deviation of 0.02.
