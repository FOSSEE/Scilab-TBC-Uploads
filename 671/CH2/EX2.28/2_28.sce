//Mesh Analysis

A=[4,-2;998,24.5]
I=inv(A)*[1/1000;0]

disp(I)

P1=I(2)^2*2.5*1000
P2=1/1000*I(1)
P3=-10^6*I(1)*I(2)
P=[P1,P2,P3]
disp(P)