// Function to implement spectral factorization, as discussed in sec. 13.1.
// 13.2

function [r,b,rbbr] = spec1(A,dA,B,dB,rho)
AA = rho * convol(A,flip(A));
BB = convol(B,flip(B));
diff1 = dA - dB;
dBB = 2*dB;
for i = 1:diff1
    [BB,dBB] = polmul(BB,dBB,[0 1],1);
end
[rbbr,drbbr] = poladd(AA,2*dA,BB,dBB);
rts = roots(rbbr);  // roots in descending order of magnitude
rts = flip(rts);
rtsin = rts(dA+1:2*dA);
b = 1;
for i = 1:dA,
    b = convol(b,[1 -rtsin(i)]);
end
br = flip(b);
bbr = convol(b,br);
r = rbbr(1) / bbr(1);
endfunction;
