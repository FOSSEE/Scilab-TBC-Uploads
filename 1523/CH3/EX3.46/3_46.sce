//Network Theorem 1
//page no-3.52
//example3.46
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("I2-I1=2");....//equation 1
disp("I2=-3 A");....//equation 2
A=[-1 1;0 1];
B=[2 -3]'
X=inv(A)*B;
disp(X);
disp("I1 = -5 A");
disp("Writing Vth equation,");
a=-5;
b=-3;
v=8-(2*a)-b-6;
printf("\nVth = %.f V",v);
//calculation of Rth
disp("replacing the voltage source with short circuit and current source by an open circuit ");
m=5;
printf("\nRth = %.f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.2f W",n);