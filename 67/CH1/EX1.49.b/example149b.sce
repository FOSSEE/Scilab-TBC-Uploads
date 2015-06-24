//Example 1.49b
//Determine whether the signal x(n)=cos(pi*n/2)cos(pi*n/4)
clc;
n=0:1/100:100
x0=cos((%pi*n/2)+(%pi*n/4))
x1=cos((%pi*n/2)-(%pi*n/4))
x=(x0+x1)/2;
plot(x);
disp('plot shows that this is a periodic signal');