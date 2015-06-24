function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

f=1000
w=2*%pi*f

///AB
R=2000
C=0.045E-6
Xc=1/%i/w/C
Z1=parallel(R,Xc)

////BC
R=1000
C=0.45E-6
Xc=1/%i/w/C
Z2=R+Xc

////AD
C=0.4E-6
Z3=1/%i/w/C

Z4=Z2*Z3/Z1
disp(Z4)
