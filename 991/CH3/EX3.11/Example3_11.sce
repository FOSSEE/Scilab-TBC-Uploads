//Example 3.11.
clc
q=1.6*10^-19
m=9.1*10^-31
Va=800
l=2
d=0.5
L=20
D=1
format(9)
v=sqrt(2*q*Va/m)
disp(v,"(i) The velocity of the beam, v(m/s)= sqrt(2qVa / m) =")
Vd=(D*2*d*Va)/(l*L)
disp("(ii) The deflection of the beam, D = lLVd / 2dVa")
disp(Vd,"Therefore, the voltage that must be applied to the plates, Vd(V) =")