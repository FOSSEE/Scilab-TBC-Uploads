G1=input("G1=")
G2=input("G2=")
G3=input("G3=")
Is1=input("Is1=")
Is2=input("Is2=")

A=[G1+G3,-G3;-G3,G2+G3];
I=[Is1;Is2];
V=inv(A)*I;

disp(V)