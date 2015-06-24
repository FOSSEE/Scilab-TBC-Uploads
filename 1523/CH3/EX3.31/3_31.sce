//Network Theorem 1
//page no-3.39
//example3.31
//calculation of Vth (Thevenin's voltage)
a=0.25;
v=(10*a)+(8*a);
disp("Writing Vth equation,");
printf("\nVth = %.f V",v);
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("4*I1-2*I2 = 1");....//equation 1
disp("Applying KVL to mesh 2:"); 
disp("-18*I1-11*I2=0");....//equation 2
A=[4 -2;18 -11];
B=[1 0]'
X=inv(A)*B;
disp(X);
disp("I2 = 2.25 A");
a=2.25;
printf("\nIsc = I2 = %.2f A",a);
//Calculation of Rth
x=v/a;
printf("\nRth = %.f Ohm",x);