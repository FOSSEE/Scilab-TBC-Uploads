//Network Theorem 2
//pg no 3.21
//example 3.18
disp("removing the 20 Ohm resistor from the network");
disp("Applying KVL to mesh 1");
disp("30*I1-15*I2=-75");....//equation 1
disp("Applying KVL to mesh 2");
disp("-15*I1+20*I2=20");....//equation 2
A=[30 -15;-15 20];//solving the equations in matrix form
B=[-75  20]'
X=inv(A)*B;
disp(X);
disp("I1=-3.2 A");
disp("I2=-1.4 A");
//Calculation of Vth (Thevenin's voltage)
a=-3.2;
b=-1.4;
v=45;
v1=45-10*(a-b);
printf("\nWriting Vth equation, \n Vth = %.f V",v1);
//Calculation of Rth (Thevenin's resistance)
x=10;
y=5;
z=5;
//delta into star network
r1=((x*y)/(x+y+z));
r2=((x*z)/(x+y+z));
r3=((z*y)/(x+y+z));
mprintf("\nR1 = %.1f Ohm \nR2 = %.1f Ohm \nR3 = %.1f Ohm",r1,r2,r3);
m=16.25;
r=((m*r1)/(m+r1))+r1;
printf("\nRth = %.2f Ohm",r);
//Claculation of IL (Load Current)
i=v1/(r+20);
printf("\nIL = %.2f A",i);