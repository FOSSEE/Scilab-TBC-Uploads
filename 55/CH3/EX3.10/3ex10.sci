x = poly(0, 'x');
p = 2*x^3-7*x^2+4*x-15;
disp(p,'the polynomial is')
k=horner(p,5);
disp(k,'value of the polynomial at x=5 is')