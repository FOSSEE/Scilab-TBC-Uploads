//clear//
//Caption:Hamming Codes Revisited
//Example8.3:(7,4) Hamming Code Revisited
//message sequence = [1,0,0,1]
//D = poly(0,D);
clc;
D = poly(0,'D');
g = 1+D+0+D^3; //generator polynomial
m = (D^3)*(1+0+0+D^3); //message sequence
[r,q] = pdiv(m,g);
p = coeff(r);
disp(r,'remainder in polynomial form')
disp(p,'Parity bits are:')
G = [g;g*D;g*D^2;g*D^3];
G = coeff(G);
disp(G,'G')
G(3,:) = G(3,:)+G(1,:);
G(3,:) = modulo(G(3,:),2);
G(4,:) = G(1,:)+G(2,:)+G(4,:);
G(4,:) = modulo(G(4,:),2);
disp(G,'Generator Matrix G =')
h = 1+D^-1+D^-2+D^-4;
H_D = [D^4*h;D^5*h;D^6*h];
H_num =numer(H_D);
H = coeff(H_num);
H(1,:) =H(1,:)+H(3,:);
H(1,:) = modulo(H(1,:),2);
disp(H,'Partiy Check matrix H =')
