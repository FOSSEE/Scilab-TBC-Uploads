//Chapter 8
//Example 8_23
//Page 193

clear;clc;

l=500;
w=1.5;
t=1600;
h2=90;
h1=30;
h=h2-h1;

printf("x1+x2=500 \n");
d=h*2*t/w/l;
printf("x2-x1=%.0f \n\n", d);

A=[1 1; -1 1];
b=[l; d];
X=A\b;
x1=X(1);
x2=X(2);

s1=w*x1^2/2/t;
cl=h1-s1;
x=l/2-x1;
smid=w*x^2/2/t;
clmp=cl+smid;

printf("x1 = %.0f m \n", x1);
printf("x2 = %.0f m \n\n", x2);
printf("S1 = %.0f m \n", s1);
printf("Clearance of the lowest point O from water level = %.0f m \n", cl);
printf("The distance from the lowest point to the midpoint = %.0f m \n", x);
printf("Sag at midpoint = %.2f m \n", smid);
printf("Clearance of mid point from water level = %.2f m \n\n", clmp);




