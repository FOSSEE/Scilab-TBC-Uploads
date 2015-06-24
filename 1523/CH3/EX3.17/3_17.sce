//Network Theorem 2
//pg no 3.18
//example 3.17
disp("removing the 3 Ohm resistor from the network");
disp("Applying KVL to mesh 1");
disp("11*I1-9*I2=50");....//equation 1
disp("Applying KVL to mesh 2");
disp("-9*I1+18*I2=0");....//equation 2
A=[11 -9;-9 18];//solving the equations in matrix form
B=[50  0]'
X=inv(A)*B;
disp(X);
disp("I1=7.69 A");
disp("I2=3.85 A");
//Calculation of Vth (Thevenin's voltage)
a=7.69;
b=3.85;
v=-((5*b)+(8*(b-a)));//the B terminal is positive w.r.t A
printf("\nWriting Vth equation, \n Vth = %.1f V",v);
//Calculation of Rth (Thevenin's resistance)
x=4;
y=2;
z=5;
//delta into star network
r1=((x*y)/(x+y+z));
r2=((x*z)/(x+y+z));
r3=((z*y)/(x+y+z));
mprintf("\nR1 = %.2f Ohm \nR2 = %.2f Ohm \nR3 = %.2f Ohm",r1,r2,r3);
m=1.73;
n=8.91;
r=(r2+(m*n)/(m+n));
printf("\nRth = %.2f Ohm",r);
//Claculation of IL (Load Current)
i=v/(r+3);
printf("\nIL = %.2f A",i);