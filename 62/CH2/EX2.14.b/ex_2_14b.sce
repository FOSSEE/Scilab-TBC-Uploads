syms x y
y=integ(exp(-x)-exp(-2*x),x,0,1000000000)
disp("which is less than inf",y,"system  is bibo stable as y=");