//Network Theorem 2
//pg no 3.11
//example 3.10
//when 17 V source is acting alone
disp("Vx+2I1=0");//equation 1
disp("Applying KVL to mesh,");
disp("-5Vx-5I1=17");//equation 2
A=[1 2;-5 -5];//solving equation in matrix form
B=[0 17]'
X=inv(A)*B;
disp(X);
disp("I1 = 3.4 A");
//when the 1 A source is acting alone
disp("4Vx+3I2=0");//equation 1
disp("Applying KCL at Node x,");
disp("Vx=-6/5");//equation 2
A=[4 3;1 0];//solving equation in matrix form
B=[0 -6/5]'
X=inv(A)*B;
disp(X);
disp("I2 = 1.6 A");
a=3.4;
b=1.6;
x=a+b;
printf("\nBy superposition theorem, \nI = I1+I2 = %.f A ",x);
