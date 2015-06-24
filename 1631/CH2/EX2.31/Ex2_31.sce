//Caption: Mean,Variance
//Example 2.31
//page no 85
//find i)Mean
//     ii)Variance of given function
clc;
clear;

//Mean Value
function X=f(x),
    z=3*(1-x)^2,//Marginal Probability Density Function
    X=x*z
endfunction
a=0;
b=1;
EX=intg(a,b,f);//Mean value of X

function  Y=c(y)
     z=3*(1-y)^2,//Marginal Probability Density Function
     Y=y*z
endfunction

EY=intg(a,b,c);//Mean value of Y
disp(EX,"i)Mean of X  =")
disp(EY,"  Mean of Y  =")

//Variance
function X=g(x),
    z=3*(1-x)^2,//Marginal Probability Density Function
    X=x^2*z
endfunction
a=0;
b=1;
EX2=intg(a,b,g);

function  Y=h(y)
     z=3*(1-y)^2,//Marginal Probability Density Function
     Y=y^2*z
endfunction

EY2=intg(a,b,h);

vX2=EX2-(EX)^2;//Variance of X
vY2=EY2-(EY)^2;//Variance of Y

disp(vX2,"ii)Variance of X");

disp(vY2,"  Variance of Y");

