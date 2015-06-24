//Example No. 11_02
//Three-Point Formula
//Pg No. 350
clear ;close ;clc ;

x = poly(0,"x");
deff('F = f(x)','F = x^2');
deff('DF = df(x,h)','DF = (f(x+h)-f(x-h))/(2*h)');
dfactual = derivat(f(x));
h = [0.2 ; 0.1 ; 0.05 ; 0.01 ]
for i = 1:4
    y(i) = df(1,h(i));
    err(i) = y(i) - horner(dfactual,1)
end
table = [h y err];
disp(table)