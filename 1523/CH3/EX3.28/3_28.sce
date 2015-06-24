//Network Theorem 1
//page no-3.33
//example3.28
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("90*I1-60*I2=120");....//equation 1
disp("Applying KVL to mesh 2:"); 
disp("-60*I1+100*I2-30*I3=40");....//equation 2
disp("Applying KVL to mesh 3:");
disp("30*I2-30*I3=-10");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[90 -60 0;-60 100 -30;0 30 -30];
B=[120 40 -10]'
X=inv(A)*B;
disp(X);
disp("I3 = 4.67A");
a=4.67;
printf("\nIsc = %.2f A",a);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit ");
c=30;
b=60;
x=(c*b)/(c+b);
y=x+10;
z=(y*c)/(y+c);
printf("\nRn = %.f Ohm",z);
