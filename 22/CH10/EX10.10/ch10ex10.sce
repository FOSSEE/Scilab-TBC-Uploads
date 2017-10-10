A=[0 1;-2 -3];
 P = [2 1; 1 1]
[V,lambda]=spec(A);
B=[1;2];
Bhat=P*B
disp(P,"P=")
disp(Bhat,"B^=")
disp(lambda,"lambda=")