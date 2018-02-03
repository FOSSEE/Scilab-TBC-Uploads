// Design of conventional controller which is an equivalent of internal model controller
// 10.9

// Designs Discrete Internal Model Controller
// for transfer function z^{-k}B(z^{-1})/A(z^{-1})
// Numerator and Denominator of IMC HQ are outputs
// Controller is also given in R,S form 


function [k,HiN,HiD,R,S,mu] = imc_stable(B,A,k,alpha)

[Kp,d,Bg,Bnmp,Bm] = imcsplit(B,mtlb_logical(1));
Bg = Kp * Bg;

Bnmpr = flip(Bnmp);
Bms = sum(Bm);
HiN = A;
HiD = Bms * convol(Bg,Bnmpr);
k = k+d;

[zk,dzk] = zpowk(k);
Bf = (1-alpha);
Af = [1 -alpha];
S = convol(Bf,A);
R1 = convol(Af,convol(Bnmpr,Bms));
R2 = convol(zk,convol(Bf,convol(Bnmp,Bm)));

[R,dR] = poladd(R1,length(R1)-1,-R2,length(R2)-1);
R = convol(Bg,R);
endfunction;

