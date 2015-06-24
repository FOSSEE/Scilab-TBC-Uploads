clc
syms k;
disp('total probability= integrate (f,x,0,6 )=')
p=integrate ('k*x','x',0,2)
q=integrate ('2*k','x',2,4)
r=integrate ('-k*x+6*k','x',4,6)
