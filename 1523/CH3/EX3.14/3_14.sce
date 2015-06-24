//Network Theorem 2
//pg no 3.15
//example 3.14
//when 18 V source is acting alone
disp("Vx1-31=0");//equation 1
disp("Applying KVL to mesh,");
disp("-3Vx1-9I=-18");//equation 2
A=[1 -3;-3 -9];//solving equation in matrix form
B=[0 -18]'
X=inv(A)*B;
disp(X);
disp("Vx1 = 3 V");
//when the 5 A source is acting alone
disp("from the figure,");
disp("V1+Vx2=0");//equation 1
disp("Applying KCL at node 1,");
disp("1/2V1-1/2Vx2=5");//equation 2
A=[1 1;1/2 -1/2];//solving equation in matrix form
B=[0 5]'
X=inv(A)*B;
disp(X);
disp("Vx2= -5 V");
//when the 36 V source is acting alone
disp("from the figure,");
disp("Vx3+3I=0");//equation 1
disp("Applying KVL to the mesh,");
disp("3Vx3-9I=-36");//equation 2
A=[1 3;3 -9];//solving equation in matrix form
B=[0 -36]'
X=inv(A)*B;
disp(X);
disp("Vx3= -6 V");
a=3;
b=-5;
c=-6;
x=a+b+c;
mprintf("\nBy superposition theorem, \n Vx = Vx1+Vx2+Vx3 = %.f V ",x);
