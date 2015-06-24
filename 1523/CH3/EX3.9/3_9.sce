//Network Theorem 2
//pg no 3.10
//example 3.9
//when 100 V source is acting alone
disp("Vx-5I1=0");//equation 1
disp("Applying KVL to mesh,");
disp("10Vx-15I1=-100");//equation 2
A=[1 -5;10 -15];//solving equation in matrix form
B=[0 -100]'
X=inv(A)*B;
disp(X);//negative because of opposite direction
disp("I1 = 2.857 A");
//when the 10 A source is acting alone
disp("9Vx+10I2=0");//equation 1
disp("Applying KCL at Node 1,");
disp("Vx=-100/7");//equation 2
A=[9 10;1 0];//solving equation in matrix form
B=[0 -100/7]'
X=inv(A)*B;
disp(X);
disp("I2 = 12.857 A");
a=2.857;
b=12.857;
x=a+b;
printf("\nBy superposition theorem, \nI = I1+I2 = %.3f A ",x);
