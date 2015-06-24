//Network Theorem 2
//pg no 3.14
//example 3.13
//when 120 V source is acting alone
disp("Applying KVL to mesh,");
disp("Iy1=5.45 A");
//when the 12 A source is acting alone
disp("from the figure,");
disp("V1+4Iy2=0");//equation 1
disp("Applying KCL at node 1,");
disp("-V1/8 +9/4Iy2=-12");//equation 2
A=[1 4;-1/8 9/4];//solving equation in matrix form
B=[0 -12]'
X=inv(A)*B;
disp(X);
disp("Iy2 =-4.36 A");
//when 40 V source is acting alone
disp("Applying KVL to mesh,");
disp("Iy3=-1.82 A");
a=5.45;
b=-4.36;
c=-1.82;
x=a+b+c;
mprintf("\nBy superposition theorem, \n I = Iy1+Iy2+Iy3 = %.2f A ",x);
