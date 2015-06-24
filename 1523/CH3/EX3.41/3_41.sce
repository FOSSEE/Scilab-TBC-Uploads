//Network Theorem 1
//page no-3.47
//example3.41
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("I2-I1=4");....//equation 1
disp("Applying KVL at the outerpath:"); 
disp("-6*I1-5*I2=2");....//equation 2
A=[-1 1;-6 -5];
B=[4 2]'
X=inv(A)*B;
disp(X);
disp("I1 = -2 A");
disp("I2 = 2 A");
disp("Writing Vth equation,");
a=-2;
v=8-a;
printf("\nVth = %.f V",v);
//calculation of Rth
disp("replacing the voltage source with short circuit and current source by an open circuit ");
x=(v*1)/(v+1);
printf("\nRth = %.2f Ohm",x);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",x);
//calculation of Pmax
m=(v^2)/(4*x);
printf("\nPmax = %.2f W",m);