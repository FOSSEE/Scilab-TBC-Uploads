// example:-5.12,page no.-265.
// program to find the excitation coefficient of the forward travelling TE10 mode.
syms M Pm uo w j a b Io x y z ro pi Z1 h1 A1p P1 no ko uo eo;
ko=w*sqrt(uo*eo);
no=sqrt(uo/eo);
h1=sin(pi*x/a)*(-1/Z1); // in x direction.
P1=(2/Z1)*integ(integ(sin(pi*x/a)^2,x),y);
P1=limit(P1,x,a)-limit(P1,x,0);
P1=limit(P1,y,b)-limit(P1,y,0);
// taking sin(2*pi)=0. we get,
P1=a*b/Z1; 
Pm=Io*pi*(ro^2);  // defined at x=a/2,y=b/2 and z=0;
M=j*w*uo*Pm;
A1p=(1/P1)*(-(1/Z1)*M); 
disp(A1p,'the forward wave excitation coefficient will be = ')
disp("!! NOTE:-replace w=sqrt(uo*eo) and no=sqrt(uo/eo),the answer will match !! ")
disp(" NOTE:- on integrating, x component will become one at x=a/2,y component will become one at y=b/2 and z component will become one at z=0.")