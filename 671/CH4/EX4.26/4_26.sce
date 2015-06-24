function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

//converting curr source to v source
I=0.4
R1=15
V=I*R1
w=400

R2=5
R3=80
L=25E-3
Xl=w*L*%i

Zeq=R1+R2+parallel(R3,Xl)
I=V/Zeq
Il=I*R3/(R3+Xl)
Ix=I*Xl/(R3+Xl)

disp(Il,Ix)