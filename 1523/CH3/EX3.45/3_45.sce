//Network Theorem 1
//page no-3.51
//example3.45
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("I1=3 A");....//equation 1
disp("Applying KVL to the mesh 2:"); 
disp("-25*I1+41*I2=0");....//equation 2
A=[1 0;-25 41];
B=[3 0]'
X=inv(A)*B;
disp(X);
disp("I2 = 1.83 A");
disp("Writing Vth equation,");
a=1.83;
v=-20+(10*a)+(6*a);
printf("\nVth = %.2f V",v);
//calculation of Rth
disp("replacing the current source of 50 A by an open circuit ");
x=25;
y=16;
m=((x*y)/(x+y));
printf("\nRth = %.2f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.2f W",n);