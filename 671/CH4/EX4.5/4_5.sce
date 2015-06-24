L=0.0255
R1=6
V=240
f=50
w=2*%pi*f
Va=sqrt(V^2/10)
Vb=3*Va
Xl=w*L
Theta1=atan(Xl/R1)
Theta2=%pi/2-Theta1 //Va and Vb are in quadrature

I=Vb/sqrt(R1^2+Xl^2)

R=(Va/I)/sqrt(1+tan(Theta2)^2)
disp(R)

Xc=R*tan(Theta2)
C=1/w/Xc
disp(C)