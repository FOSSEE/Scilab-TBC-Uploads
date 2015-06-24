//Network Theorem 1
//page no-3.48
//example3.42
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("I1=50");....//equation 1
disp("Applying KVL to mesh 2:"); 
disp("5*I1-10*I2=0");....//equation 2
A=[1 0;5 -10];
B=[50 0]'
X=inv(A)*B;
disp(X);
disp("I2 = 25 A");
disp("Writing Vth equation,");
a=25;
v=3*a;
printf("\nVth = %.f V",v);
//calculation of Rth
disp("replacing the current source of 50 A by an open circuit ");
x=7;
y=3;
m=(x*y)/(x+y);
printf("\nRth = %.1f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.1f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.2f W",n);