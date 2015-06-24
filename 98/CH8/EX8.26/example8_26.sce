//Chapter 8
//Example 8_26
//Page 195

clear;clc;

grad=20;
h1=22;
h2=22;
l=300;
lc=2;
w=1;
t=1500;

eh=h1-lc;
h=l*(1/grad);
dc=sqrt(l^2-h^2);
d=2*t*h/w/dc;

a=[1 1; -1 1];
b=[dc; d];
x=a\b;
s2=w*x(2)^2/2/t;
bc=eh+h;
og=bc-s2-x(1)*tand(asind(1/grad));

printf("Effective height of each tower = %d m \n\n", eh);
printf("Vertical distance between towers is = %d m \n\n", h);
printf("Horizontal distance between two towers = %d m \n\n", dc);
printf("x1+x2=%d \n\n", dc);
printf("x2-x2=%d m \n\n", d);
printf("Solving the two, x1 = %d m , x2 = %d m \n\n", x(1), x(2));
printf("Sag S2 = %.2f m \n\n", s2);
printf("BC = %.2f m \n\n", bc);
printf("Clearance from the lowest point O from the ground = %.2f m \n\n", og);
