//properties of convolution
x=[1 2 3 4 5];
h=[1 zeros(1:5)];
a=convol(x,h);
b=convol(h,x);
a==b
