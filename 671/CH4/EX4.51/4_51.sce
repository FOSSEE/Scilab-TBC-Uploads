function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

I=5

Zth=parallel(40,30*%i)
Zl=conj(Zth)
Vth=Zth*I
Z=Zth+Zl
Il=Vth/Z
Pmax=abs(Il*Il*real(Zl))

disp(Zth,Pmax)