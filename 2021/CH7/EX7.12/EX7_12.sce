//Finding of Maximum Power Outlet
//Given
d=0.4;
l=400;
H=420;
rho=1000;
f=0.025;
g=9.81;
pi=3.14;
//To Find
h=H/3;
h1=(f*l*100)/(2*g*d);
v=sqrt(h/h1);disp(h); disp(h1);
a=(pi/4)*d^2;
q=a*v;
h3=H-h;disp(h3);
p=(rho*g*q*h3)/1000;
disp(" Maximum Power Outlet ="+string(p)+" KW");
