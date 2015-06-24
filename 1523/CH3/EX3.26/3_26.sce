//Network Theorem 1
//page no-3.31
//example3.26
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("7*I1-I2=10");....//equation 1
disp("Applying KVL to mesh 2:"); 
disp("-I1+6*I2-3*I3=0");....//equation 2
disp("Applying KVL to mesh 3:");
disp("3*I2-3*I3=20");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[7 -1 0;-1 6 -3;0 3 -3];
B=[10 0 20]'
X=inv(A)*B;
disp(X);
disp("I1 = -13.17 A");
a=13.17;
printf("\nIsc = -%.2f A",a);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit ");
c=1;
b=6;
x=(c*b)/(c+b);
y=x+2;
z=(y*3)/(y+3);
printf("\nRn = %.2f Ohm",z);
//calculation of IL (load current)
n=10;
i=a*(z/(z+n));
printf("\nIL = %.2f A",i);