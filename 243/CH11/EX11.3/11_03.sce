//Example No. 11_03
//Pg No. 353
close ;clear ;clc ;

x = 0.45;
deff('F = f(x)','F = sin(x)');
deff('DF = df(x,h)','DF = (f(x+h) - f(x))/h');
dfactual =  cos(x);
h = 0.01:0.005:0.04;
n = length(h);
for i = 1:n
    y(i) = df(x,h(i))
    err(i) = y(i) - dfactual ;
end
table = [ h' y err];
disp(table)
//scilab uses 16 significant digits so the bound for roundoff error is 0.5*10^(-16)
e = 0.5*10^(-16)
M2 = max(sin(x+h));
hopt = 2*sqrt(e/M2);
disp(hopt,'hopt = ',M2,'M2 = ')