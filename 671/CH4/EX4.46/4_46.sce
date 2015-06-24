Vl=1
w=2
R=1
r=1/2
L=0.5
C=1
Xl=w*L*%i
Xc=1/(w*C*%i)

Il=Vl/Xl
VR=Il*R
Vs=Vl+VR

Vr=Vs
Ir=Vr/r
Ic=Vs/Xc
Is=Ir+Ic+Il

PR=-VR*VR/R
Pr=-Vr*Vr/r
Ps=Vs*conj(Is)

disp(real(Ps),Pr,PR)