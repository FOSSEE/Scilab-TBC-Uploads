//Network Theorem 1
//page no-3.55
//example3.48
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("Applying KVL to the mesh 1:"); 
disp("35*I1-30*I2=60");....//equation 1
disp("Applying KVL to the mesh 2:"); 
disp("I2=2");....//equation 2
A=[35 -30;0 1];
B=[60 2]'
X=inv(A)*B;
disp(X);
disp("I1 = 3.43 A");
disp("Writing Vth equation,");
a=3.43;
b=2;
v=20*(a-b)+20;
printf("\nVth = %.2f V",v);
//calculation of Rth
disp("replacing the voltage source with short circuit and current source by an open circuit ");
x=15;
y=20;
m=((x*y)/(x+y));
printf("\nRth = %.2f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.1f W",n);