// LQG control design by polynomial method, to solve Eq. 13.51 on page 472.
// 13.4

// LQG controller design by method of Ahlen and Sternad
// function [R,degR,S,degS] = ...
// lqg(A,degA,B,degB,C,degC,k,rho,V,degV,W,degW,F,degF)

function [R,degR,S,degS] = ...
lqg1(A,degA,B,degB,C,degC,k,rho,V,degV,W,degW,F,degF)

[r,b,degb] = ...
specfac(A,degA,B,degB,rho,V,degV,W,degW,F,degF);

WFA = flip(convol(A,convol(F,W)));
dWFA = degW + degF + degA;

[rhs1,drhs1] = polmul(W,degW,WFA,dWFA);
[rhs1,drhs1] = polmul(rhs1,drhs1,C,degC);
rhs1 = rho * rhs1;
rhs2 = convol(C,convol(V,flip(convol(B,V))));
drhs2 = degC + 2*degV + degB;
for i = 1:degb-degB-degV,
  rhs2 = convol(rhs2,[0,1]);
end
drhs2 = drhs2 + degb-degB-degV;
C1 = zeros(1,2);

[C1,degC1] = putin(C1,0,rhs1,drhs1,1,1);
[C1,degC1] = putin(C1,degC1,rhs2,drhs2,1,2);
rbf = r * flip(b);
D1 = zeros(2,2);
[D1,degD1] = putin(D1,0,rbf,degb,1,1);
for i = 1:k,
	rbf = convol(rbf,[0 1]);
end
[D1,degD1] = putin(D1,degD1,rbf,degb+k,2,2);
N = zeros(1,2);
[N,degN] = putin(N,0,-B,degB,1,1);
[AF,dAF] = polmul(A,degA,F,degF);
[N,degN] = putin(N,degN,AF,dAF,1,2);

[Y,degY,X,degX] = xdync(N,degN,D1,degD1,C1,degC1);

[R,degR] = ext(X,degX,1,1);
[S,degS] = ext(X,degX,1,2);
X = flip(Y);

endfunction;
