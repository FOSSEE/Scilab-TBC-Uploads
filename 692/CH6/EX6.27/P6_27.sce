// Example 6.27
//inverse Z-transform of z^3/(z-0.5)*(z+1/3)^2;

clear ;
clc ;
z=%z;
Gnum = z^3;
Gden = (z-0.5)*(z+1/3)^2;
G = Gnum/Gden;
g1=ldiv(Gnum,Gden,10);
elts=factors(Gden);

//the partial fraction gives:
p1 = horner((1/(1+0.3333333/z)^2),0.5);
disp(p1,'p1 = ');
p2 = horner(1/((1-0.5/z)),-0.3333333);
disp(p2,'p2 = ');
p3 = horner(0.6/((1-0.5/z)),-0.3333333);
disp(p3,'p3 = ')
disp('partial fraction gives : ');
disp(p1*z/elts(1),'h1 = ');
disp(p3*z/elts(3),'h2 = ');
disp(p2*z^2/(elts(2)*elts(2)),'h3 = ');
disp('gn = 0.36*(0.5)^n + 0.24*(-1/3)^n + 0.4*(n+1)*(-1/3)^n')
disp(g1,'the first 10 samples of g[n] = ');