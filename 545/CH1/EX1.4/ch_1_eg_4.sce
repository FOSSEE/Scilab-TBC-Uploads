// ch 1 ex 1.4
clc
disp("the solution of eg 1.4-->");
a1=.35, a2=.16, a3=.21, a4=.01              //1st row 
b1=.54, b2=.42, b3=.54, b4=.1              //2nd row
c1=.04, c2=.24, c3=.1, c4=.65              //3rd row
d1=.07, d2=.18, d3=.15, d4=.24             //4th row   
r1=14, r2=28, r3=17.5, r4=10.5            //given values

b4=b4-(b1/a1)*a4                          // for making b1=0
b3=b3-(b1/a1)*a3
b2=b2-(b1/a1)*a2
r2=r2-(b1/a1)*r1
b1=b1-(b1/a1)*a1

c4=c4-(c1/a1)*a4                         // for making c1=0
c3=c3-(c1/a1)*a3
c2=c2-(c1/a1)*a2
r3=r3-(c1/a1)*r1
c1=c1-(c1/a1)*a1

d4=d4-(d1/a1)*a4                         // for making d1=0
d3=d3-(d1/a1)*a3
d2=d2-(d1/a1)*a2
r4=r4-(d1/a1)*r1
d1=d1-(d1/a1)*a1

c4=c4-(c2/b2)*b4                        // for making c2=0
c3=c3-(c2/b2)*b3
r3=r3-(c2/b2)*r2
c2=c2-(c2/b2)*b2

d4=d4-(d2/b2)*b4                       // for making d2=0
d3=d3-(d2/b2)*b3
r4=r4-(d2/b2)*r2
d2=d2-(d2/b2)*b2

d4=d4-(d3/c3)*c4                      //for making d3=0
r4=r4-(d3/c3)*r3
d3=d3-(d3/c3)*c3

B2=r4/d4;
D2=(r3-(c4*B2))/c3;
B1=(r2-(D2*b3)-(B2*b4))/b2;
D1=(r1-(B2*a4)-(D2*a3)-(B1*a2))/a1;
disp(B2,D2,B1,D1,"the values of MOLAR FLOW RATES of D1, B1, D2, B2 respectively are");

B=D2+B2;
x1B=(.21*D2 + .01*B2)/B;
x2B=(.54*D2 + .1*B2)/B;
x3B=(.1*D2 + .65*B2)/B;
x4B=(.15*D2 + .24*B2)/B;
disp(x4B, x3B, x2B, x1B,"the composition of stream B is");

D=D1+B1;
x1D=(.35*D1 + .16*B1)/D;
x2D=(.54*D1 + .42*B1)/D;
x3D=(.04*D1 + .24*B1)/D;
x4D=(.07*D1 + .18*B1)/D;
disp(x4D, x2D, x2D, x1D,"the composition of stream D is");