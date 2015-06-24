//Network Theorem 1
//page no-3.30
//example3.25
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("7*I1-2*I2=20");....//equation 1
disp("Applying KVL to mesh 2,"); 
disp("-2*I1+10*I2=-12");....//equation 2
disp("solving these equations we get :");...//solving equations in matrix form
A=[7 -2;-2 10];
B=[20 -12]'
X=inv(A)*B;
disp(X);
disp("I2 = -0.67 A");
a=-0.67;
printf("\nIsc = I2 = %.2f A",a);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit ");
b=5;
c=2;
d=8;
y=((b*c)/(b+c))+d;
printf("\nRn = %.2f Ohm",y);
//calculation of IL (load current)
z=10;
i=-a*(y/(10+y));
printf("\nIL = %.2f A",i);