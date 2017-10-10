function a = parallel(b,c)
a = b*c/(b+c)
endfunction
V=10*%i
w=1000
R=2
L=2E-3
C=500E-6
Xl=w*L*%i
Xc=1/(w*C*%i)

Zeq=Xl+Xc+parallel(R,Xl)
disp(Zeq)

I=V/Zeq
Ir=I*Xl/(R+Xl)
Il2=I-Ir
Vl=I*Xl
Vc=I*Xc

disp(I,Ir,Il2,Vl,Vc)