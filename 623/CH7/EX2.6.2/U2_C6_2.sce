//variable initialization
x=0:.001:(1/3);
y=0:.001:(1/3);
x0=0;
x1=1/3;
y0=0;
y1=1/3;

p=4*integrate('(sin(%pi*x))^2','x',x0,x1)*integrate('(sin(%pi*y))^2','y',y0,y1);

printf("The required probability = %.2f",p);
