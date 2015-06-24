//Ex 3.11
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM

clear;
clc ;
close ;
syms n;
a=0.5;        //assume constant value
x =(a)^n;
X1= symsum (x,n ,0, %inf );

a=2;        //assume constant value
X2= symsum (x,n ,0, %inf );
if (X1<=%inf)
   disp('Hence Summation < infinity. Given System is Stable for |a| < 1');
elseif (X2<=%inf)
    disp('Hence Summation < infinity. Given System is Stable for |a| > 1');
end
