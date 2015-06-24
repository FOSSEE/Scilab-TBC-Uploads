//to find initial current,current at the end of 2 cycles and at the end of 10s

clc;
Ef=1;
Xd2=.2;
I2=Ef/Xd2;
r=100*10^6;
V=22000;
I_b=r/(sqrt(3)*V);
I2=I2*I_b;disp(I2,'initial current(A)');

Xd1=.3;
I1=Ef/Xd1;
Xd=1;
I=Ef/Xd;

tau_dw=0.03;
tau_f=1;

function[a]=I_sc(t)
    a=(I2-I1)*exp(-t/tau_dw)+(I1-I)*exp(-t/tau_f)+1;
endfunction
//2 cycles=0.04s
disp(I_sc(.2867)*I_b,'current at the end of 2 cycles(A)');
disp(I_sc(10)*I_b,'current at the end of 10s(A)');
