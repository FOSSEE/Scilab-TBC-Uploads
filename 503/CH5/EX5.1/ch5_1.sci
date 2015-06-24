// To calculate harmanic factor for stator

clc;
S=36;    //no of slots
q=3;    //no of phases
p=4;    //no of poles
m=S/(q*p);    //slots/pole/phase
g=180*p/S;    //gamma elec
function [k]=bfctr(n)
    k=sind(m*n*g/2)/(m*sind(n*g/2));
endfunction

K_b=bfctr(1);
disp(K_b,'K_b(fundamental)');

K_b=bfctr(3);
disp(K_b,'K_b(third harmonic)');

K_b=bfctr(5);
disp(K_b,'K_b(fifth harmonic)');