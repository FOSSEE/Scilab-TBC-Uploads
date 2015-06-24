clc;
//Example 10.1
//Page No 395



//Solution

i=10*10^-4;
dt=10*10^-9;
dv=10;

disp("The expression for the current through a capacitor is ");

disp("i = C dv/dt");

disp("Rearranging and solving for c yields, "); 

c=i*dt/dv;

disp('F',c,"C = ");

disp("t = RC","The charge time constant for C when Q1 in on is ");

disp("Therefore, rearranging the above equation and substituting the value of chaging time yields");

C=dt/(4.6*20);

disp('F',C/100,"C = ");


