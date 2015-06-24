function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

Zeq=parallel(5,3-imult(6))
I=complex(10,0)
V=Zeq*I
pf=cos(atan(imag(V)/real(V)))
P=norm(V)*norm(I)*pf
disp(pf,P)