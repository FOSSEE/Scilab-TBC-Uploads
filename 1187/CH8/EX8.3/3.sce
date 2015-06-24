clc

disp("(a) To determine the values of a1 & a2")

// To determine the values of a1 & a2 following conditions must be satisfied

// Condition I - When n=0, u/um=0
// Condition II - When n=1, u/um=a1+a2=1
// Condition III - When n=1, d(u/um)/dn = a1+2a2=0

// By  satisfying these conditions, we have
// a1+a2=1;
// a1+2a2=0;

A=[1,1;1,2];
B=[1;0];
X=inv(A)*B;

a1=X(1);
a2=X(2);

disp("a1=")
disp(a1)
disp("a2=")
disp(a2)

disp("(b)Evaluate the constants A and B")

// A = integrate('(1-f(n))*f(n)','n',0,1)

A=integrate('(1-(2*n-n^2))*(2*n-n^2)','n',0,1)
disp("A =")
disp(A)

// B = differentiation of (2*n-n^2) at n=0, we get 
B=2;

disp("B =")
disp(B)

