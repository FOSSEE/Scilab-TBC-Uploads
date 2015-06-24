//Network Theorem 2
//pg no 3.22
//example 3.19
disp("removing the 3 Ohm resistor from the network");
disp("Applying KVL to mesh 1");
disp("I1=6");....//equation 1
disp("Applying KVL to mesh 2");
disp("-12*I1+18*I2=42");....//equation 2
A=[1 0;-12 18];//solving the equations in matrix form
B=[6  42]'
X=inv(A)*B;
disp(X);
disp("I2= 6.33 A");
//Calculation of Vth (Thevenin's voltage)
a=6.33;
v=6*a;
printf("\nWriting Vth equation, \n Vth = %.f V",v);
//Calculation of Rth (Thevenin's resistance)
disp("replacing the voltage source with short circuit and current source by open circuit");
x=6;
y=12;
r=(x*y)/(x+y);
printf("\nRth = %.f Ohm",r);
//Calculation of IL (load current)
i=v/(r+3);
printf("\nIL = %.2f A",i);