function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

w=800
R1=10
R2=20
L=0.05
C=0.25E-3
Xl=w*L*%i
Xc=1/(w*C*%i)

Zeq1=R2+parallel(Xc,R1+Xl)
Zeq2=parallel(parallel(R1,R2)+Xc,Xl)

disp(Zeq2,Zeq1)