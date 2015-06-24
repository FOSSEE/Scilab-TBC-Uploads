// Example 6.13 //coupling efficiency
clc;
clear;
close;
t=1;//
no=1;//
na=0.3;//
x=1;//assume
y=1;//
nc1=(t*(na/no)^2*(x/y)^2)*100;//
alpha=2;//
nc2=((t*(na/no)^2*(x/y)^2*(alpha/(alpha+2))))*100;//
disp(nc1,"coupling efficiency for step index fiber in (%)")
disp(nc2,"coupling efficiency for graded index fiber in (%)")
