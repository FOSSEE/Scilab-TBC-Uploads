A=[1 0;1 -1];
[V,lambda]=spec(A);
B=[1;0];
C=[1 -2];
P=inv(V);
Bhat=P*B
Chat=C*inv(P)
disp(' (a):')
disp(Bhat,"B^=")
disp(Chat,"C^=")
A=[-1 0;-2 1];
[V,lambda]=spec(A);
B=[1;1];
C=[0 1];
P=inv(V);
Bhat=P*B
Chat=C*inv(P)
disp('Part (b):')
disp(Bhat,"B^=")
disp(Chat,"c^=")