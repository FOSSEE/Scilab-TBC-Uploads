function C=seriesC(C1,C2)
    C=C1*C2/(C1+C2)
endfunction

Ceq=1+seriesC(6,3)

disp(Ceq)