// Example 6.14 //coupling efficiency
clc;
clear;
close;
t=1;//
no=1;//
na=0.3;//
x=1;//assume
y=3/4;//
alpha=2;//
nc1=((t*(na/no)^2)*(alpha+(1-(y/x)^2)))/(alpha+2)*100;//
disp(nc1,"coupling efficiency for graded index fiber in (%)")
