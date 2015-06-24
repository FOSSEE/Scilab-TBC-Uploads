P=12E6
Q=6E6
V=22000
Xs=8
S=P+%i*Q
theta=atan(Q/P)
disp(theta/%pi*180)

Ia=norm(S)/sqrt(3)/V
Ef=V/sqrt(3)+%i*Xs*Ia*exp(-%i*theta)
delta=atan(imag(Ef)/real(Ef))
disp(delta/%pi*180)

emf=norm(Ef)*sqrt(3)
disp(emf)
