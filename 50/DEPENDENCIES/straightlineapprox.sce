function [P]=straightlineapprox(x,f)

n=length(x);m=length(f);
if m<>n then 
   error('linreg - Vectors x and f are not of the same length.');
   abort;
end;
s=0;
for i=1:n
    s=s+x(i)*f(i);
end
c0=det([sum(f) sum(x); s sum(x^2)])/det([n sum(x);sum(x) sum(x^2)]);
c1=det([ n sum(f); sum(x) s])/det([n sum(x);sum(x) sum(x^2)]);
X=poly(0,"X");
P=c1*X+c0;
endfunction
