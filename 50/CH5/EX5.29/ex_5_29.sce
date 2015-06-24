// example 5.29
// evaluate the given double integral using the simpsons rule;

// I= double integral f(x)=1/(x+y) in the range x=[1,2],y=[1,1.5];

h=.5;
k=.25;
deff('[w]=f(x,y)','w=1/(x+y)')

I=(.125/9)*[{f(1,1)+f(2,1)+f(1,1.5)+f(2,1.5)}+4*{f(1.5,1)+f(1,1.25)+f(1.5,1.5)+f(2,1.25)}+16*f(1.5,1.25)];
disp(I);

