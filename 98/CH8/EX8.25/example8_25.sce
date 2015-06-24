//Chapter 8
//Example 8_25
//Page 195

clear;clc;

h2=90;
h1=40;
h=h2-h1;
l=400;
t=2000;
w=1;

d=h*2*t/l;

A=[1 1; -1 1];
b=[l; d];
X=A\b;
x1=X(1);
x2=X(2);

printf("x1 = %.0f m \n", x1);
printf("x2 = %.0f m \n\n", x2);

x=abs(x1)+l/2;
s2=w*x2^2/2/t;
smid=w*x^2/2/t;
hb=s2-smid;
cl=h2-hb;

printf("The distance from the lowest point to the midpoint = %.0f m \n", x);
printf("Sag at midpoint = %.2f m \n", smid);
printf("S2 = %.2f m \n", s2);
printf("Height of point B from mid point = %.0f m \n", hb);
printf("Clearance of mid point from water level = %.2f m \n\n", cl);


