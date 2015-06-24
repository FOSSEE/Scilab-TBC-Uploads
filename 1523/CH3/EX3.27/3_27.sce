//Network Theorem 1
//page no-3.32
//example3.27
//calculation of Isc (short-circuit current)
disp("Applying KVL to mesh 1:");
disp("20*I1-20*I2=10");....//equation 1
disp("Applying KVL to mesh 2:"); 
disp("-20*I1+60*I2-20*I3=40");....//equation 2
disp("Applying KVL to mesh 3:");
disp("-20*I2+50*I3=-100");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[20 -20 0;-20 60 -20;0 -20 50];
B=[10 40 -100]'
X=inv(A)*B;
disp(X);
disp("I1 = 0.81A");
a=0.81;
printf("\nIsc = -%.2f A",a);
//calculation of Rn (norton's resistance)
disp("replacing the voltage source with short circuit ");
c=20;
b=30;
x=(c*b)/(c+b);
y=x+c;
z=(y*c)/(y+c);
printf("\nRn = %.1f Ohm",z);
//calculation of IL (load current)
n=10;
i=a*(z/(z+n));
printf("\nIL = %.2f A",i);