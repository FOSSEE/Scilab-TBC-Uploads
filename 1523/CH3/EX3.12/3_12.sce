//Network Theorem 2
//pg no 3.13
//example 3.12
//when 18 V source is acting alone
disp("Vx+I1=0");//equation 1
disp("Applying KVL to mesh,");
disp("3Vx-6I1=-18");//equation 2
A=[1 1;3 -6];//solving equation in matrix form
B=[0 -18]'
X=inv(A)*B;
disp(X);
disp("I1 = 2 A");
//when the 3 A source is acting alone
disp("from the figure,");
disp("Vx=2 V");//equation 1
disp("Applying KCL at node 1,");
disp("3Vx-6I2=0");//equation 2
A=[1 0;3 -6];//solving equation in matrix form
B=[2 0]'
X=inv(A)*B;
disp(X);
disp("I2 =1 V");
a=2;
b=1;
x=a+b;
mprintf("\nBy superposition theorem, \n I = I1+I2 = %.f A ",x);
