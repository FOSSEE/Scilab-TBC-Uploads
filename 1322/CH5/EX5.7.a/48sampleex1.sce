
//f(x):x->3x;g(x):x->x-2;fg(5)
clear;
clc;
close;
x=poly(0,'x');
f=3*x;
g=x-2;
// fg= f(g(x))=f(x-2)=3*(x-2)
x=5;
fg=3*(x-2)



