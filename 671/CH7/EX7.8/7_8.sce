uo=(4*%pi)*1E-7
ur=3000
Ac=10/100*10/1000
Bc=1.4
Hc=Bc/(uo*ur)
lc=150/100
Ftotal=Hc*lc

N2=800
I2=2
F2=N2*I2
F1=Ftotal-F2

N1=400
I1=F1/N1  ////out of terminal a
disp(I1)


Bc=1.4
fluxc=Bc*Ac
Rc=lc/(Ac*uo*ur)
Wf=1/2*Rc*fluxc*fluxc
disp(Wf)



L1=N1*N1/Rc
L2=N2*N2/Rc
M=sqrt(L1*L2)
disp(M)