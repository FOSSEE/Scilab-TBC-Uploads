//Network Theorem 1
//page no-3.57
//example3.50
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("Applying KVL to the mesh 1:"); 
disp("9*I1-3*I2=72");....//equation 1
disp("Applying KVL to the mesh 2:"); 
disp("-3*I1+9*I2=0");....//equation 2
A=[9 -3;-3 9];
B=[72 0]'
X=inv(A)*B;
disp(X);
disp("I1 = 9 A");
disp("I2 = 3 A");
disp("Writing Vth equation,");
a=9;
b=3;
v=(6*a)+(2*b);
printf("\nVth = %.f V",v);
//calculation of Rth
disp("replacing the voltage source with short circuit and current source by an open circuit ");
x=6;
y=2;
z=4;
m=((x*b)/(x+b))+2;
l=((m*z)/(m+z));
printf("\nRth = %.f Ohm",l);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.f Ohm",l);
//calculation of Pmax
n=(v^2)/(4*l);
printf("\nPmax = %.f W",n);