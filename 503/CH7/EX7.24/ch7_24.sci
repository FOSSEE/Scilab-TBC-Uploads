//to find generator output

clc;
P=20000;
V=250;
I_a=P/V;
R_a=.16;
vd=I_a*R_a;
function [P_o]=output(E_a)
    V_t=E_a-vd;
    P_o=I_a*V_t;
    disp(P_o,'generator output(W)');
endfunction
disp('at I_f=1A');
E_a=150;
P_o=output(E_a);
disp('at I_f=2A');
E_a=257.5;
P_o=output(E_a);
disp('at I_f=2.5A');
E_a=297.5;
P_o=output(E_a);

disp('at speed 1200rpm');
function [Ea]=ratio(E_a);
    Ea=.8*E_a
endfunction
disp('at I_f=1A');
E_a=150;
Ea=ratio(E_a);
P_o=output(Ea);
disp('at I_f=2A');
E_a=257.5;
Ea=ratio(E_a);
P_o=output(Ea);
disp('at I_f=2.5A');
E_a=297.5;
Ea=ratio(E_a);
P_o=output(Ea);
