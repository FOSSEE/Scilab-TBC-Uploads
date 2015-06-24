//Chapter 3
//page no 71
//given
clc;
clear all;
T=1; //Air
NA=0.3;
n0=1;
A=2;
//y=0.75x;
disp("for step index :");
//for infinite alpha
//nc=T*(NA/n0)^2*(x/y)^2*(A/(A+2))
nc=T*(NA/n0)^2*(1/0.75)^2*A/(A+2);          //    y/x=0.75
printf("\n Coupling Coefficient,nc = %0.0f percent \n\n",nc*100);

disp("for graded index :A=2");
A=2;
//n_c=(T*(NA/n0)^2*[A+[1-(y/x)^2]]/(A+2))
n_c=(T*(NA/n0)^2*[A+[1-(0.75)^2]]/(A+2))       //y/x=0.75
printf("\n Coupling Coefficient,nc = %0.1f percent \n",n_c*100);
