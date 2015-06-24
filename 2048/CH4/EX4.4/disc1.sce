// Discrete transfer function of the continuous state space system
// 4.4

F = [0 0; 1 -0.1]; G = [0.1; 0];
C = [0 1]; dt = 0.2;
sys = syslin('c',F,G,C);
sysd = dscr(sys,dt);
H = ss2tf(sysd);
