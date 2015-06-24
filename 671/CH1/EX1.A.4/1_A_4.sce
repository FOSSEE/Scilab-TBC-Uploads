function i = i(t)
    i = 9*sin(%pi*t)/1000;
endfunction

t=200/1000
CV=intg(0,t,i)
Wc=300E-6
C=(CV^2)/(2*Wc)
disp(C)