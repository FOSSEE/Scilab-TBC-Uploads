I=1
w=400
R=500
L=1/40
C=250E-6
Xl=w*L*%i
Xc=1/(w*C*%i)

w0=1/sqrt(L*C)
////////at resonance
Ir=I
V=R*I
Il=V/Xl
Ic=V/Xc
Icir=abs(Il)
Ic+Il=0
Icl=Ic+Il

disp(Icl,Ic,Il,Ir)