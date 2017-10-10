// Implementation of example 7.6
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

T1 = 200; //K
T2 = 100; //K
function Cv = f(T)
  Cv = 0.042*T^2;
endfunction

Q1 = intg(T1,T2,f);

function S = g(T)
  S = f(T)/T;
endfunction

dS_sys = intg(T1,T2,g);
Wmax = dS_sys*T2 + abs(Q1);
printf("Maximum amount of work that can be recovered as system is cooled down to temperature of reservoir, Wmax = %d J",Wmax); 
//end