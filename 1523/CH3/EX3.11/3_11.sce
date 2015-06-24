//Network Theorem 2
//pg no 3.12
//example 3.11
//when 5 A source is acting alone
disp("-V1+4I=0");//equation 1
disp("Applying KCL to node 1,");
disp("1.25V1-4I=5");//equation 2
A=[-1 4;1.25 -4];//solving equation in matrix form
B=[0 5]'
X=inv(A)*B;
disp(X);
disp("V1 = 20 V");
//when the 20 V source is acting alone
disp("from the figure,");
disp("V2-3I=0");//equation 1
disp("Applying KVL to the mesh,");
disp("I=-20");//equation 2
A=[1 -3;0 1];//solving equation in matrix form
B=[0 -20]'
X=inv(A)*B;
disp(X);
disp("V2 = -60 V");
a=20;
b=-60;
x=a+b;
mprintf("\nBy superposition theorem, \n V = V1+V2 = %.f V ",x);
