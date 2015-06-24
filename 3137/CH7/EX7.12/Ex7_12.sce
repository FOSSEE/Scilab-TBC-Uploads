//Initilization of variables
w=0.518 //lb/ft
d=50 //ft
l=500 //ft
//Plot coding
A=linspace(0,800,9) //defined x axis
B=A+50
C=[50000,(500/(2*100)),(500/(2*200)),(500/(2*300)),(500/(2*400)),(500/(2*500)),(500/(2*600)),(500/(2*700)),(500/(2*800))]
D=cosh(C)
E=[D(1)*A(1),D(2)*A(2),D(3)*A(3),D(4)*A(4),D(5)*A(5),D(6)*A(6),D(7)*A(7),D(8)*A(8),D(9)*A(9)]
plot(A,B,A,E) //plotting two lines on the same plot
//Calculations
//By close observation of plot taking c around 650
//consider c=635
c=635
T_max=w*(c+d) //lb
a=c+d
l=sqrt(4*(a*a-c*c))
//Result
clc
printf('The maximum tension is %flb and length required is %fft',T_max,l)
