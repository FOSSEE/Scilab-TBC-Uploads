X = [3.01 2.97 3.12 2.99 3.03 3.02 3.10 3.14 3.09 3.20];
Y = 1:1:10;
u = 3;
sigma = 0.1;
n=4;
ucl = u + (3*sigma/sqrt(n));
lcl = u - (3*sigma/sqrt(n));
Z= 0.1:0.1:10;
P= ones(1,100);
Q= ones(1,100);
P =P*ucl;
Q =Q*lcl;
plot2d(Y, X, -2);
plot2d(Z, P, 1);
plot2d(Z, Q, 1);
//disp(size(Z));
//disp(size(P));
disp(ucl, 'ucl is');
disp(lcl, 'lcl is')