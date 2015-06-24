//Network Theorem 1
//page no-3.50
//example3.44
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("Applying KVL to mesh 1");
disp("15*I1-5*I2=120");....//equation 1
disp("Applying KVL to the mesh 2:"); 
disp("I2=-6");....//equation 2
A=[15 -5;0 1];
B=[120 -6]'
X=inv(A)*B;
disp(X);
disp("I1 = 6 A");
disp("Writing Vth equation,");
a=6;
v=120-(10*a);
printf("\nVth = %.f V",v);
//calculation of Rth
disp("replacing the current source of 50 A by an open circuit ");
x=10;
y=5;
m=((x*y)/(x+y));
printf("\nRth = %.2f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.2f W",n);