function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

V=5
w=5
R=2
L1=0.8
L2=1
C=1/5
Xl1=w*L1*%i
Xl2=w*L2*%i
Xc=1/(w*C*%i)

Vth=R/(R+Xl2)*V
Zth=Xc+parallel(Xl2,R)
disp(Zth,Vth)

I=Vth/(Zth+Xl1)
Vl=I*Xl1
S=Vl*conj(I)/2
disp(S)