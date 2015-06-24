function C=seriesC(C1,C2)
    C=C1*C2/(C1+C2)
endfunction

V=100

Cp=1+2
Ceq=seriesC(Cp,6)
q=Ceq*V

q1=q*(1/(1+2))
q2=q-q1

disp(q2,q1,q)

E6=q*q/2/6/1000
E1=q1*q1/2/1/1000
E2=q2*q2/2/2/1000
Enet=E1+E2+E6

disp(Enet,E6,E2,E1)