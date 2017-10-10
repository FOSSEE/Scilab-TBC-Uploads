//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_3.sce

clc;
clear;
r=[-0.03 0.01 0.04];
r_dash=[0.03 0.08 -0.02];
Q1=129e-9;
Q2=110e-6;
epsilon_not=1/(36*%pi*1e9);

a=r-r_dash;  //r and r_dash are the position of two charges
b=a.^2;
c=b(1,1)+b(1,2)+b(1,3);
d=sqrt(c);     //b,c,d are assumed alphabets for calculating magnitude of difference of r and r'  

F=(Q1*Q2)/(4*%pi*epsilon_not*d^2);
printf("\n The force on Q2=%2.1f N \n",F)
Ir=a/d;
F1=Ir*F;
printf("\n Force interms of i,j,k vector coefficient is")
disp(F1)

//There is a error in the book for calculating F value
//So answer given in the book is wrong
