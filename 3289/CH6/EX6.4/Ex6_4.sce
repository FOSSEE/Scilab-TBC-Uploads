clc

G=80 //GPa
E=200 //GPa
tf=10 //mm
tw=0.007 //m
t1=tw
t2=0.01
h=0.2 //m
b=0.1 //m
b2=b
b1=0.19
L=2.4 //m
If=0.01*0.1^3
Mt=1200
L=2.4

//solution a:
//C=Mt/theta
//C=(b1*t1^3+2*b2*t2^3)*(G/3)
C=((b1*t1^3+2*b2*t2^3)/3)//    without substituting the value of G we get C
disp(C,"torsional rigidity of the beam is= ")

//a=(If*E)/12
a=If/12//                 without substituting the value of E we get a
disp(a)
//alpha=1/(h*sqrt((E*If)/(2*C)))
y=sqrt((2.5*a)/(2*C))//   without substituting the value of h
disp(y)
//(1/alpha)==y
//sigmafmax=(Mfmax*x)/If
sigmafmax=(3.43*Mt*0.05)/a
disp(sigmafmax,"maxi longitudinal bending stress in the flange in MPa is= ")

//soluton b:
si=(Mt/(C*G*10^9))*(L-y*h)
disp(si,"the angle of twist at the free end in radian is =")
si1=(Mt*L)/(C*G*10^9)
disp(si1,"total angle of twist in radians is= ")


