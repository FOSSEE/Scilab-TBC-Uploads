function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

I=10
w=2000
R=200
L=0.125

Xl=w*L*%i

Zeq=parallel(R,Xl)
V=I*Zeq
Il=V/Xl
Ir=V/R

t=1/1000
I1=sqrt(2)*real(I*exp(%i*w*t))
Il1=sqrt(2)*real(Il*exp(%i*w*t))
Ir1=sqrt(2)*real(Ir*exp(%i*w*t))
V1=sqrt(2)*real(V*exp(%i*w*t))

Ps=-V1*I1
Pr=-V1*Ir1
Pl=-V1*Il1

disp(Pl,Pr,Ps)