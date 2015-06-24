

clear;
clc;
close;
x=poly(0,'x');
p1=x-1;
p2=x^2-x-2;
p=p1/p2;
q1=x+2;
q2=x^2+4*x+3;
q=q1/q2;
t=p-q;
y=numer(t) //numerator of t
z=factors(denom(t))//factors of denominator of t (more simplified form)
disp("val=(1+2x)/(1+x)(-2+x)(3+x)")
