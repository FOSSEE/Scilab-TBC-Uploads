function C=seriesC(C1,C2)
    C=C1*C2/(C1+C2)
endfunction

Ceq1=10+seriesC(10,10)
Ceq2=Ceq1

Ceq=seriesC(seriesC(Ceq1,Ceq2),10)
disp(Ceq)