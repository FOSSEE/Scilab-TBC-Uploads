// Example 5-10
// Response to initial condition (differential equation) 
// Solution of differential equation with initial conditions 

clear; clc;
xdel(winsid());  //close all windowss

t = 0:0.05:10;
s = %s;
G1 = cont_frm(1, s^3 + 8*s^2 + 17*s + 10); //get the state space model
ssprint(G1);

x0 = [2; 1; 0.5];   // initial states of the system
G = syslin('c', G1.A, G1.B, G1.C, G1.D, x0);

y = csim( zeros(1,length(t)) , t, G);
        // response to zero input will give response to initial state
plot(t,y);
xgrid(color('gray'));
xtitle('Response to initial conditions','t Sec','y');
