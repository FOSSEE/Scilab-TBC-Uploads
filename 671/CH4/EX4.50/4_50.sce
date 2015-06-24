function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

V=12*%i

Vth=4-12*%i/(4-12*%i+6+9*%i)*V
Zth=parallel(4-12*%i,6+9*%i)

I=Vth/(Zth+6+12*%i)
S=V*conj(I)
disp(S)

Zl=conj(Zth)
I=Vth/(Zth+Zl)
S=V*conj(I)
disp(Zth,S)