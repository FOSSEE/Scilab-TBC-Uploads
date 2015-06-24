// Cancellation of common factors and determination of covariance
// 11.7

// function [N,dN,D,dD,yvar] = tfvar(N,dN,D,dD)
// N and D polynomials in z^{-1} form; discrete case

function [N,dN,D,dD,yvar] = tfvar(N,dN,D,dD)

[N,dN,D,dD] = l2r(N,dN,D,dD);
N = N/D(1); D = D/D(1);
LN = length(N); LD = length(D); 
D1 = D;
if LD<LN, D1 = [D zeros(1,LN-LD)]; dD1 = dD+LN-LD; end
H = tf(N,D1,1);//TS=1 (sampling time) has been taken constant in tfvar
yvar = covar_m(H,1); 
endfunction;
