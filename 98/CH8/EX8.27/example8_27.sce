//Chapter 8
//Example 8_27
//Page 196

clear;clc;

c=8;
l=300;
s=10;
slope=15;

printf("On level ground: \n")
wbyt=8*s/l^2;
h=s+c;
printf("Height of tower = %d m \n\n", h);

printf("On sloping ground: \n");
hs=l/slope;
printf("Vertical distance between two towers = %d m \n", hs);
x1=75;
x2=225;
printf("From the graph: \nx1 = 75m, x2 = 225m \n");
s1=wbyt*x1^2/2;
s2=wbyt*x2^2/2;
printf("S1 = %.2f m \n", s1);
printf("S2 = %.2f m \n", s2);
cl=38-s2-5;
printf("Clearance = %.2f m \n", cl);
x=75;
//minimum clearance
minc=8;
printf("x = %d m \n", x);
printf("Minimum clearance = %d m \n", minc);



