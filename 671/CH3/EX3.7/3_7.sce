function C=seriesC(C1,C2)
    C=C1*C2/(C1+C2)
endfunction

Ceq=seriesC(seriesC(10,20),40)
disp(Ceq)

q=Ceq*280
disp(q)

V1=q/10
V2=q/20
V3=q/40

disp(V3,V2,V1)