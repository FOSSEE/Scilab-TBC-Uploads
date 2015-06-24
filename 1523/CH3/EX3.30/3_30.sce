//Network Theorem 1
//page no-3.35
//example3.30
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("5*I1-2*I2=-2");....//equation 1
disp("Applying KVL to mesh 2:"); 
disp("4*I2-2*I3=-1");....//equation 2
disp("Applying KVL to mesh 3:");
disp("-2*I1-2*I2+4*I3=0");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[5 -2 0;0 4 -2 ;-2 -2 4];
B=[-2 -1 0]'
X=inv(A)*B;
disp(X);
disp("I1 = -0.64A");
disp("I2 = -0.55A");
disp("I3 = -0.59A");
a=-0.64;
b=-0.55;
c=-0.59;
printf("\nIsc = I3 = %.2f A",a);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit ");
z=2.2;
printf("\nRn = %.1f Ohm",z);
//calculation of IL (load current)
n=1;
i=-c*(z/(z+n));
printf("\nIL = %.2f A",i);
