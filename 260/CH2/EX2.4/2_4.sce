//Eg-2.4
//pg-55

clear
clc
close()

//exp(x) value determination

//maclaurin expansion truncated after second term
x=0.5;
expx1=1+x;

//maclaurin expansion truncated after fourth term
expx2=1+x+x^2/2+x^3/6;

//Pade approximation
expx3=(1+2/3*x+1/6*x^2)/(1-1/3*x);

//from scilab
expx4=exp(x);

disp("results")
disp(expx1)
disp(expx2)
disp(expx3)
disp(expx4)