syms g1 g2 g3 
poly(0,"l");
A=[1 2 0;3 -1 1;0 2 0];
C=[0;0;1];
G=[g1;g2;g3];
p=A-G*C;
[r c]=size(A);
I=eye(r,c);
q=lI-p; // lI-(A-G*C) where I is identity matrix
r=det(q) // detrminant of lI-(A-G*C)
// on equating r=0 we get
// characteristic equation
l^3+g3*(l)^2+(2*g2-9)l+2+6*g1-2*g2-7*g3=0;
printf("desired characteristic equation given is\n")
l^3+10*(l)^2+34*l+40=0;
// on comparing the coefficients og the two equations
// we get g1=25.2 g2=21.5 g3=10
g1=25.2;
g2=21.5;
g3=10;
disp(G)


