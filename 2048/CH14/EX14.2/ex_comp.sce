// Compensator calculation for Example 14.6 on page 507.
// 14.2

exec('polyno.sci',-1);
exec('polmul.sci',-1);
exec('polsize.sci',-1);

A = [1 2; 0 3]; c = [1 0];
p = roots(polyno([1 -0.5 0.5],'z'));
b = [0; 1];
K = ppol(A,b,p);

p1=0.1+0.1*%i; p2=0.1-0.1*%i;
phi = real(convol([1 -p1],[1 -p2]));
Obs = [c; c*A];
alphae = A^2-0.2*A+0.02*eye(2,2);
Lp = alphae*inv(Obs)*[0; 1];
Lp = ppol([1 0;2 3], ...
[1; 0],[0.1+0.1*%i 0.1-0.1*%i]);
Lp = Lp';

C = [1 0 0.5 2;0 1 -4.71 2.8]; 
dC = 1;

[HD,dHD] = polmul(K,0,C,dC);
[HD,dHD] = polmul(HD,dHD,Lp,0);
