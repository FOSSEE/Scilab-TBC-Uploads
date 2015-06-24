f=50
w=2*%pi*f
I=0.8
V=220
P=75
phi=acos(P/V/I)

phi_new=acos(0.9)
Ic=I*cos(phi)*(tan(phi)-tan(phi_new))
C=Ic/V/w
disp(C)

phi_new=acos(1)
Ic=I*cos(phi)*(tan(phi)-tan(phi_new))
C=Ic/V/w
disp(C)
