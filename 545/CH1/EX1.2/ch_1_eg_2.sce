//ch 1 ex 1.2
clc
disp("the soln of eg 1.2-->");
a1=10, a2=1, a3=2,              //1st row
b1=2, b2=10, b3=1,              //2nd row
c1=1, c2=2, c3=10,              //3rd row   
d1=44, d2=51, d3=61,            //given values

b3=b3-(b1/a1)*a3                // for making b1=0
b2=b2-(b1/a1)*a2
d2=d2-(b1/a1)*d1
b1=b1-(b1/a1)*a1

c3=c3-(c1/a1)*a3               // for making c1=0
c2=c2-(c1/a1)*a2
d3=d3-(c1/a1)*d1
c1=c1-(c1/a1)*a1

c3=c3-(c2/b2)*b3              // for making c2=0
d3=d3-(c2/b2)*d2
c2=c2-(c2/b2)*b2

x3=d3/c3;                      // final values of x
x2=(d2-(b3*x3))/b2;
x1=(d1-(x3*a3)-(x2*a2))/a1;
disp(x3,x2,x1,"the solution using gauss elimination method is");
