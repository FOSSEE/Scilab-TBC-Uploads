//Chapter 3
//page no 70
//given
clc;
clear all;
T=1; //Air
NA=0.3;
n0=1;
//x=y;
disp("for step index :A=infinite");
//for infinite alpha
//nc=T*(NA/n0)^2*(x/y)^2*(A/(A+2))
nc=T*(NA/n0)^2*(1)^2*1;         // A/(A+2)=1 for A=infinite
printf("\n Coupling Coefficient,nc = %0.0f percent \n\n",nc*100);

disp("for graded index :A=2");
A=2;
//n_c=(T*(NA/n0)^2*[A+[1-(y/x)^2]]/(A+2))
n_c=(T*(NA/n0)^2*[A+[1-(1)^2]]/(A+2))       //x/y=1
printf("\n Coupling Coefficient,nc = %0.1f percent \n",n_c*100);
