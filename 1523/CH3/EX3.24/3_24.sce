//Network Theorem 1
//page no-3.29
//example3.24
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("I1=2");....//equation 1
disp("Writing current equation to supermesh:");//meshes 2 & 3 will form a supermesh 
disp("I3-I2=4");....//equation 2
disp("Applying KVL to supermesh:");
disp("-5I2-15I3=0");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[1 0 0;0 -1 1;0 -5 -15];
B=[2 4 0]'
X=inv(A)*B;
disp(X);
disp("I1 = 2 A");
disp("I2 = -3 A");
disp("I3 = 1 A");
a=2;
b=-3;
x=a-b;
printf("\nIsc = %.f A",x);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit and current source by open circuit");
c=1;
m=15;
y=(c*(m+x))/(c+m+x);
printf("\nRn = %.2f Ohm",y);
//calculation of IL (load current)
z=10;
i=x*(y/(z+y));
printf("\nIL = %.2f A",i);