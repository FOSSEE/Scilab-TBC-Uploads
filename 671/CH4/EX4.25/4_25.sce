function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

V=100
Z1=complex(0,-5)
Z2=complex(5,0)
Z3=complex(0,5)
I=[0,0,0]

Z=Z1+parallel(Z2,Z3)
I(1)=V/Z

I(2)=Z3/(Z2+Z3)*I(1)
I(3)=Z2/(Z2+Z3)*I(1)

disp(I)