function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

V=20
Z1=complex(5,10)
Z2=complex(3,-4)

Vth=V*Z2/(Z1+Z2)
Zth=parallel(Z1,Z2)

//by maximum power transfer theorem
Zl=conj(Zth)
P=norm(Vth/(Zth+Zl))^2*real(Zl)
disp(P,Zl)

Rl=sqrt(real(Zth)^2+(4+imag(Zth))^2)
disp(Rl)