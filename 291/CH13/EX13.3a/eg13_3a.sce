Xbar = [35.1 33.2 31.7 35.4  34.5 36.4 35.9 38.4 35.7 27.2 38.1 37.6 38.8 34.3 43.2 41.3 35.7 36.3 35.4 34.6];
S = [4.2 4.4 2.5 3.2 2.6 4.5 3.4 5.1 3.8 6.2 4.2 3.9 3.2 4 3.5 8.2 8.1 4.2 4.1 3.7];
c = [0.7978849 0.8862266 0.9213181 0.9399851 0.9515332 0.9593684 0.9650309 0.9693103 0.9726596];
Y = 1:1:20;
n =5;
Z= 0.1:0.1:20;
Xbarbar = mean(Xbar);
Sbar = mean(S);
lclX = Xbarbar - (3*Sbar/(sqrt(n)*c(n-1)));
uclX = Xbarbar + (3*Sbar/(sqrt(n)*c(n-1)));
val1 = 1/c(n-1);
val1 = val1^2;
val1 = val1 - 1;
val = sqrt(val1);
//val = sqrt((1/c(n-1)^2)) - 1;
ucls = Sbar*(1+(3*val));
lcls = Sbar*(1-(3*val));
//disp(ucls, lcls)
plot2d(Y, Xbar, -2);
P= ones(1, 200);
Q = ones(1, 200);
P= P*lclX;
Q=Q*uclX;
disp(uclX, 'UCL(X)=');
disp(lclX, 'LCL(X)=');
plot2d(Z, P, 1);
plot2d(Z, Q, 1);
title('Control Chart for X')
scf(2);
disp(uclX, 'UCL(S)=');
disp(lclX, 'LCL(S)=');
//disp(ucls, lcls)
plot2d(Y, S, -2);
P= P*lcls/lclX;
Q=Q*ucls/uclX;
plot2d(Z, P, 1);
plot2d(Z, Q, 1);
title('Control Chart for S')