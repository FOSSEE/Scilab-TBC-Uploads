//Caption:  mean ,mean Square Standard deviation
//Example 2.24
//page no 
//Find mean,mean Square ,Standard deviation
clc;
clear;
function y=f(x)
         y=x/(2*%pi); //for 0<=x<=2*%pi
endfunction

a=0;
b=2*%pi;
mx=intg(a,b,f);//mean value
disp(mx,"Mean value mx=");

function y=fX(x)
         y=x^2/(2*%pi); //for 0<=x<=2*%pi
endfunction
a=0;
b=2*%pi;
//X^2=E(X^2) 
X2=intg(a,b,fX);//mean square value
disp(X2,"Mean square value X^2 =");

sigma2=X2-mx^2;//variance
sigma=sqrt(sigma2);//Standard deviation
disp(sigma,"Standard deviation sigma=")
