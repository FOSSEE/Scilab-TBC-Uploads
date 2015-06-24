//Network Theorem 1
//page no-3.49
//example3.43
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("Writing the current equation for the supermesh");
disp("I2-I1=6");....//equation 1
disp("Applying KVL to the supermesh :"); 
disp("5*I1+2*I2=10");....//equation 2
A=[-1 1;5 1];
B=[6 10]'
X=inv(A)*B;
disp(X);
disp("I1 = -0.29 A");
disp("I2 = 5.71 A");
disp("Writing Vth equation,");
a=5.71;
v=2*a;
printf("\nVth = %.f V",v);
//calculation of Rth
disp("replacing the current source of 50 A by an open circuit ");
x=5;
y=2;
m=((x*y)/(x+y))+3+4;
printf("\nRth = %.2f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.2f W",n);