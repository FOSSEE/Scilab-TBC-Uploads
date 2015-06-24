//clear//
clear;
clc;

//Example 18.4
//Given
xa = 0.02;
Vbar = 0.2; //[mol/mol of Feed]
xb = 0.0001;
yb = 0;
xe = 0:0.01:1;
m = 9
ye = m*xe;
//Let
F = 1; //[mol]
Lbar = F; //[mol]

//Solution
ya_star = m*xa;
yb_star = m*xb;
//By overall ethonal balance
ya = Lbar/Vbar*(xa-xb)+ yb
//Using Eq.(17.27), As both operting lines and equilibrium lines are straight
N = log((ya-ya_star)/(yb-yb_star))/log((yb_star-ya_star)/(yb-ya));

disp(N,'Ideal plates needed are' )
