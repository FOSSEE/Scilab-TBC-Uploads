//Caption:  Probability density function 
//Example 2.12
//Find   find the value of k
clc;
clear;
function y=FX1(x)            //for -infinte<x<=0
         y=0 
endfunction
function y=FX2(x)          //for 0<x<=10
         y=k*x^2 
endfunction
function y=FX3(x)          //for 10<x<infine
         y=100*k
endfunction
k=poly(0,"k");
                           //from the expression for CDF is given
y=100*k                    //for 10<x<infine
y==1; 
k=1/100;                   //k=y/100
disp(k,"i) k = ");
//CDF function can be expressed
// FX(x)=P(X<=x)
P5=FX2(5);                //x=5
disp(P5,"ii) P(X<=5) = ");
                          //now differentiating with respect tox we ,have 
                          //PDF fX=0   for -infinte<x<=0,10<x<infine
x=poly(0,"x");
m=x^2/100;
df=derivat(m);           // for 0<x<=10
disp("  for 0<x<=10",df,"iii)PDF a) fX(x) =");
disp("  -infinte<x<=0,10<x<infine",0,"   b)fX(x) = ");

x1=5,x2=7;
function y=z(x),
         y=x/50;
endfunction
P=intg(x1,x2,z);
disp(P,"iv) P(5<X<=7) =");
