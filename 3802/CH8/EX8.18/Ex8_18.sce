//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_18.sce.

clc;
clear;
P=1000e3;
V=500;
I1=2000;
I2=400;
Ig=21;           //shunt field current of generator 
Im=17;             //shunt field current of motor
R=0.01;
I=P/V;

printf("\n (a)")
efficiency=sqrt(I1/(I1+I2))*100;
printf("\n   Effciency at full load=%2.1f percentage \n",efficiency)

printf("\n (b)")
Ia_G=I1+Ig;
copper_loss_G=Ia_G^2*R;
loss_G=V*Ig;

Ia_M=I1+I2-Im;
copper_loss_M=Ia_M^2*R;
loss_M=V*Im;

total_loss=V*I2;
other_loss=total_loss-(copper_loss_G+loss_G+copper_loss_M+loss_M);               //other losses include iron,friction,windage losses
other_loss_each=other_loss/2;
total_loss_G=copper_loss_G+loss_G+other_loss_each;
Pi_G=P+total_loss_G;
efficiency=(P/Pi_G)*100;
printf("\n   Efficiency with considering losses=%2.1f percentage \n",efficiency)
//There is a mistake in the (a) part calculation in the book.
//The efficiency is 91.3% not 89.1%
