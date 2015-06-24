//to find power to the load

clc;
R_L=3;
R_a=.16;
function [P_o]=output(E_a)
    I_a=E_a/(R_a+R_L);
    P_o=I_a^2*R_L;
    disp(P_o,'power fed to the load(W)');
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
