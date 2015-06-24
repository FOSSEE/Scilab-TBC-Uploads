//variable initialization
x=0:0.1:9999;
x0=0;
x1=9999;

//calculation
I=integrate('x^2*exp(-x)','x',x0,x1);
A=sqrt(1/(I*(%pi/2)));
r=(1/4)*integrate('x^3*exp(-x)','x',x0,x1);

printf("\n A = %f*a0^-1.5\n r = %.1f*a0",A,r);
