clear;
clc;
format('v',6)
function [R,P,Q]=Posvec(r,p,q);
R=r*sind(q);P=-sind(p)*cosd(q)/r;Q=r*r;
D=[R P Q];
disp(D,'D at P');
Dn=[r*sind(q) 0 0];
Dt=D-Dn;
disp(Dt, 'Tangential component of D at P');
endfunction
Posvec(10,150,330);
D=[-5 .043 100];
a=[0 1 0];
U1=D(1,2)*a(1,3)-D(1,3)*a(1,2);
U2=D(1,3)*a(1,1)-D(1,1)*a(1,3);
U3=D(1,1)*a(1,2)-D(1,2)*a(1,1);
U=[U1 U2 U3];
det_U=sqrt(U1^2+U2^2+U3^2);
format('v',7);
disp(U/det_U,'Unit vector P perpendicular to D');
