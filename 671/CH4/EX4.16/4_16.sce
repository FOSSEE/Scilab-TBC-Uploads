function [Ra,Rb,Rc]=delta_to_star(Rab,Rbc,Rca)
    X=Rab+Rbc+Rca
    Ra=Rab*Rca/X
    Rb=Rab*Rbc/X
    Rc=Rca*Rbc/X
endfunction

function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

V=20
w=2
R=1
C=1/2
Xc=1/(w*C*%i)
Zab=-%i
Zbc=2
Zca=2

[Za,Zb,Zc]=delta_to_star(Zab,Zbc,Zca)
Zth=Za+parallel(R+Zb,Xc+Zc)

Vdc=V*(Zc+Xc)/(R+Zb+Zc+Xc)
disp(Zth,Vdc)

Isc=Vdc/Zth
disp(Zth,Isc)