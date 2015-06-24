//Example 3.10
clc
Va=600
l=3.5
d=0.8
L=20
Vd=20
format(9)
q=1.6*10^-19
m=9.1*10^-31
v=sqrt(2*q*Va/m)
disp(v,"(i) The velocity of the electron, v(m/s)= ")
format(10)
a=(q/m)*(Vd/d)
a1=a*10^2
disp("(ii) ma = qE")
disp(a1,"Thus, acceleration, a(m/s)= qE / m = (q/m)(Vd/d) =")
format(5)
D=(l*L*Vd)/(2*Va*d)
disp(D,"(iii) The deflection on the screen, D(cm)= ILVd / 2Vad =")
format(7)
Ds=D/Vd
disp(Ds, "(iv) Deflection sensitivity(cm/V)= D / Vd =")