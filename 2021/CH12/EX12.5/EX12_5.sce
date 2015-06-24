//Finding of Friction Factor
//Given
D=0.1;
ks=0.0025;
v=2;
v1=10^-6;
//To Find
//case-1
R=(v*D)/v1;
fa=(1.785*log10(R))-1.424;
a=(fa)^2;
f1=1/a;
//case-2
fb=2*log10((3.71*D)/ks);
b=(fb)^2;
f2=1/b;
//Case-3
fc=-(2*log10((ks/3.71*D)+(5.186/R^(0.89))));
c=(fc)^2;
f3=1/c;
disp(" Friction Factor for");
disp("Smooth Turbulent flow ="+string(f1)+" no units ");
disp("Rough Turbulent flow ="+string(f2)+" no units ");
disp("Smooth and Rough Turbulent flow ="+string(f3)+" no units ");
