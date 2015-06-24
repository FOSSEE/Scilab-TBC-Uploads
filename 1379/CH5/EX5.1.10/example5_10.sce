

//exapple 5.10 
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
n=0.022;
B=5.75;
s=0.15*pi/180;
Q=16.8;
function[y]=normal(x)
    y=Q-B*x/n*(B*x/(B+2*x))^(2/3)*s^0.5;
endfunction
x=fsolve(1.33,normal);
disp(x,"Normal depth in (m):");
Dc=(Q^2/g/B^2)^(1/3);
disp(Dc,"Critical depth in (m):");
delD=.1;
D=1.55:.1:2.35
su=0;
for i=1:9
    delL=delD/s*(1-(Dc/D(i))^3)/(1-(x/D(i))^3.33);
    su=su+delL
end
disp(su,"distance in (m) from upstream to that place:")
