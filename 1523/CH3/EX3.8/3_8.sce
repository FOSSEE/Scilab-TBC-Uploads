//Network Theorem 2
//pg no 3.10
//example 3.8
//when 5 V source is acting alone
disp("Vx+10I1=5");//equation 1
disp("Applying KVL to mesh,");
disp("4Vx+12I1=5");//equation 2
A=[1 10;4 12];//solving equation in matrix form
B=[5 5]'
X=inv(A)*B;
disp(X);
disp("I1 = 0.535 A");
//when the 2 A source is acting alone
disp("Vx+10I2=0");//equation 1
disp("Applying KCL at Node x,");
disp("Vx=-10/7");//equation 2
A=[1 10;1 0];//solving equation in matrix form
B=[0 -10/7]'
X=inv(A)*B;
disp(X);
disp("I2 = 0.1428 A");
a=0.535;
b=0.1428;
x=a+b;
printf("\nBy superposition theorem, \nI = I1+I2 = %.3f A ",x);
