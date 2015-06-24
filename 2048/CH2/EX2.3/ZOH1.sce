// ZOH equivalent state space system
// 2.3

F = [-1 0;1 0]; G = [1; 0]; 
C = [0 1]; D = 0; Ts=1;
sys = syslin('c',F,G,C,D);
sysd = dscr(sys,Ts)






