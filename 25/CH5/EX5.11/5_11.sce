// example:-5.11,page no.-264.
// program to determine the amplitude of the forward and backward travelling TE10 modes and the input resistance.
syms Io a b x y z h1 e1 J P1 A1p A1m pi Z1 delta b1 j P Rin;
e1=sin(pi*x/a);  // in y direction.
h1=-sin(pi*x/a)/Z1; // in z direction.
P1=(2/Z1)*integ(integ(sin(pi*x/a)^2,x),y);
P1=limit(P1,x,a)-limit(P1,x,0);
P1=limit(P1,y,b)-limit(P1,y,0);
// taking sin(2*pi)=0. we get,
P1=a*b/Z1; 
A1p=(-1/P1)*Io*y; // as for x,it will be one at x=a/2 and 1 for z at z=0;
A1p=limit(A1p,y,b)-limit(A1p,y,0);
A1m=(-1/P1)*Io*y; // as for x,it will be one at x=a/2 and 1 for z at z=0;
A1m=limit(A1m,y,b)-limit(A1m,y,0);
P=integ(integ(((A1p^2)/Z1)*sin(pi*x/a)^2,x),y);
P=limit(P,x,a)-limit(P,x,0);
P=limit(P,y,b)-limit(P,y,0);
// taking sin(2*pi)=0. we get,
P=(b*(Io^2)*Z1*pi)/(2*a*pi);
Rin=2*P/(Io^2);
disp(A1p,'amplitude of the forward travelling wave = ')
disp(A1m,'amplitude of the backward travelling wave = ')
disp(Rin,'input resistance seen by the probe = ')