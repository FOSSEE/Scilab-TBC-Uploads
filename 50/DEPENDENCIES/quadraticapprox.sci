function [P]=quadraticapprox(x,f)

n=length(x);m=length(f);
if m<>n then 
   error('linreg - Vectors x and f are not of the same length.');
   abort;
end;
s1=0;
s2=0;
for i=1:n
    s1=s1+x(i)*f(i);
    s2=s2+x(i)^2*f(i);
end
c0=det([sum(f) sum(x) sum(x^2);s1 sum(x^2) sum(x^3); s2 sum(x^3) sum(x^4)])/det([n sum(x) sum(x^2);sum(x) sum(x^2) sum(x^3); sum(x^2) sum(x^3) sum(x^4)]);

c1=det([n sum(f) sum(x^2);sum(x) s1 sum(x^3); sum(x^2) s2 sum(x^4)])/det([n sum(x) sum(x^2);sum(x) sum(x^2) sum(x^3); sum(x^2) sum(x^3) sum(x^4)]);

c2=det([n sum(x) sum(f);sum(x) sum(x^2) s1; sum(x^2) sum(x^3) s2])/det([n sum(x) sum(x^2);sum(x) sum(x^2) sum(x^3); sum(x^2) sum(x^3) sum(x^4)]);

X=poly(0,"X");
P=c2*X^2+c1*X+c0;
endfunction
