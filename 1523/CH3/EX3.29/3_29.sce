//Network Theorem 1
//page no-3.34
//example3.29
//calculation of Isc (short-circuit current)
disp("Writing current equation for supermesh :");
disp("I2-I1=2");....//equation 1
disp("Applying KVL to supermesh ,"); 
disp("12*I1= 55");....//equation 2
disp("solving these equations we get :");...//solving equations in matrix form
A=[-1 1;12 0];
B=[2 55]'
X=inv(A)*B;
disp(X);
disp("I1 = 4.58 A");
disp("I2 = 6.58 A");
a=6.58;
printf("\nIsc = I2 = %.2f A",a);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit and current source with open circuit ");
b=12;
c=4;
y=((b*c)/(b+c));
printf("\nRn = %.f Ohm",y);
//calculation of IL (load current)
z=8;
i=a*(y/(z+y));
printf("\nIL = %.2f A",i);