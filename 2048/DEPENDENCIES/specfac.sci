// Spectral factorization, to solve Eq. 13.47 on page 471.
// 13.3

// function [r,b,dAFW] = ...
//    specfac(A,degA,B,degB,rho,V,degV,W,degW,F,degF)
// Implements the spectral factorization for use with LQG control
// design method of Ahlen and Sternard

function [r,b,dAFW] = ...
   specfac(A,degA,B,degB,rho,V,degV,W,degW,F,degF)
AFW = convol(A,convol(W,F));
dAFW = degA + degF + degW;
AFWWFA = rho * convol(AFW,flip(AFW));
BV = convol(B,V);
dBV = degB + degV;
BVVB = convol(BV,flip(BV));
diff1 = dAFW - dBV;
dBVVB = 2*dBV;
for i = 1:diff1
    [BVVB,dBVVB] = polmul(BVVB,dBVVB,[0 1],1);
end
[rbb,drbb] = poladd(AFWWFA,2*dAFW,BVVB,dBVVB);
Rbb = polyno(rbb,'z');
rts = roots(Rbb);
rtsin = rts(dAFW+1:2*dAFW);
b = 1;
for i = 1:dAFW,
    b = convol(b,[1 -rtsin(i)]);
end
b = real(b); 
br = flip(b);
bbr = convol(b,br);
r = rbb(1) / bbr(1);
endfunction;
