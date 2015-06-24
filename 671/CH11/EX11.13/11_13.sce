

Xs=8
Ia=40
V=600
Vt=V/sqrt(3)
Ef=V

delta=acos((1-(Xs*Ia/V)^2+(Vt/V)^2)/2/Vt*V)
theta=-atan((cos(delta)-Vt/V)/sin(delta))
pf=cos(theta)
Pout=sqrt(3)*V*pf*Ia
disp(Pout)

theta=-theta
Pin=Pout
disp(Pout)
