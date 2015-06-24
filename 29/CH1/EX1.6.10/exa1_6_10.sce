//Caption:final_value
// example 1.6.10
//page 13
syms t s;
F=4/(s^2+2*s)
x=s*F
x=simple(x)
z=limit(x,s,0);//final value theorem
z=dbl(z);
disp(z,"f(0+)=")