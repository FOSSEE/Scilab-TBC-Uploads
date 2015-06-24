clc;
//Example 7.11
//Page No 283


//solution

N=20;
ft=88.8;
dF=75;
fm=15;

//(a)

fc=ft/N;

disp('MHz',fc,"(a)fc = ");

//(b)

df=dF/20;

disp('Hz',(df*10^3),"(b)df = ");

//(c)

dr=df/fm;

disp(dr,"(d)DR = ");

//(d)

DR=dr*N;

disp(DR,"(b)DR = ");
