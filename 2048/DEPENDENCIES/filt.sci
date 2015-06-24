// Filters a data sequence using a digital filter
// a(1)*y(n) = b(1)*x(n) + b(2)*x(n-1) + ... + b(nb+1)*x(n-nb)
// - a(2)*y(n-1) - ... - a(na+1)*y(n-na)
 
// x: input signal
// x has maximum length
function y = filt(b,a,x) 
l = length(a);
m = length(b);
n = length(x);
b = [b zeros(1,n-m)];
a = [a zeros(1,n-l)];

y1(1) = b(1)*x(1);
y2(1) = 0;
y = y1 + y2;
y = y/a(1);
  for i=2:n
    y1 = b(1:i) .* x(i:-1:1);
    z1 = sum(y1);
    y2 = a(2:i).*y(i-1:-1:1);
    z2 = sum(y2);
    y3 = z1 - z2;
    y3 = y3/a(1);
    y = [y y3];
  end;
  
endfunction;
