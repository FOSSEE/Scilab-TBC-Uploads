clc
syms x;
f=%e^(-x)
disp('clearly,f>0 for every x in(1,2) and integrate (f,x,0,%inf )=')
integrate ('%e^(-y)','y',0,%inf )
disp('required probability=p(1<=x<=2)=integrate(f,x,1,2)=')
integrate('%e^(-y)','y',1,2)
disp('cumulative probability function f(2)=integrate(f,x,-%inf,2)=')
integrate('%e^(-y)','y',0,2)