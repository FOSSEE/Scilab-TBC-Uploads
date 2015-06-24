//EXAMPLE 2.26,convolution of x & h
x=[-2 0 1 -1 3];
disp(x,'x = ');
h=[1 2 0 -1];
disp(h,'h = ');
n=0:7;
y=convol(x,h);
disp(y,'The convolution of the two inputs is :')
