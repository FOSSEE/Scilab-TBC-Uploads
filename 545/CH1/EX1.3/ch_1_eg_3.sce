//ch 1 ex 1.3
clc
disp("the soln of eg 1.3-->");
a1=3, a2=1, a3=-2,              //1st row
b1=-1, b2=4, b3=-3,              //2nd row
c1=1, c2=-1, c3=4,              //3rd row   
d1=9, d2=-8, d3=1,            //given values

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
