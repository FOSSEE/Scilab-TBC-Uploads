clear;
clc;
format('v',6);
function [X,Y,Z]=sptocart(x,y,z);
R=sqrt(x^2+y^2+z^2);r=sqrt(x^2+y^2);
P=asin(r/R);Q=acos(x/r);
X=(10/R)*sin(P)*cos(Q)+R*(cos(P))^2 *cos(Q)-sin(Q);
Y=(10/R)*sin(P)*sin(Q)+R*(cos(P))^2 *sin(Q)+cos(Q);
Z=(10/R)*cos(P)-R*cos(P)*sin(P);
disp([X Y Z],'B in cartesian cordinate')
endfunction
sptocart(-3,4,0);
function [r,p,z]=sptocylin(r1,p1,z1);
R=sqrt(r1^2+z1^2);
P=acos(z1/R);
r=(10/R)*sin(P)+R*(cos(P))^2 ;
p=1;
z=(10/R)*cos(P)-R*cos(P)*sin(P);
disp([r p z],'B in cylindrical cordinates');
endfunction
sptocylin(5,%pi/2,-2);

