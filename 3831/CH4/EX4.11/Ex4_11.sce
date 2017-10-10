// Example 4_11
clc;funcprot(0);
// Given data
W_actual=150;// hp
W_reversible=233;// hp
m_in=1.10;// lbm/min
E=20.0*10^3;// Btu/lbm

// Solution
W_in=(E*m_in*60)/2545;// hp
// (a)
n_c=(W_actual/W_in)*100;// The energy conversion efficiency of the engine in %
// (b)
n_W=(W_actual/W_reversible)*100;// The work efficiency of the engine.
printf('\n(a)The energy conversion efficiency of the engine,n_c=%2.1f percentage \n(b)The work efficiency of the engine,n_W=%2.1f percentage',n_c,n_W);
