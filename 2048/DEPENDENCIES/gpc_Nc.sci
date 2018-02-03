// Calculates the GPC law for different prediction and control horizons
// 12.9

function [K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
gpc_Nc(A,dA,B,dB,C,dC,k,N1,N2,Nu,rho)
D=[1 -1]; dD=1; AD=convol(A,D); dAD=dA+1; 
zj = 1; dzj = 0;
for i = 1:N1+k-1
    zj = convol(zj,[0,1]); dzj = dzj + 1;
end
M = 2*k+N2-2+dB;  P = max(k+N2+dA-1,dC-1)
G = zeros(N2-N1+1,Nu+1); H1 = zeros(N2-N1+1,M); 
H2 = zeros(N2-N1+1,P+1);
for j = k+N1:k+N2
    zj = convol(zj,[0,1]); dzj = dzj + 1;
    [Fj,dFj,Ej,dEj] = xdync(zj,dzj,AD,dAD,C,dC);
    [Nj,dNj,Mj,dMj] = xdync(zj,dzj,C,dC,1,0);
    [Gj,dGj] = polmul(Mj,dMj,Ej,dEj);
    [Gj,dGj] = polmul(Gj,dGj,B,dB);
    [Pj,dPj] = polmul(Mj,dMj,Fj,dFj);
    [Pj,dPj] = poladd(Nj,dNj,Pj,dPj);
    if (j-k >= Nu)
    G(j-(k+N1-1),1:Nu+1) = flip(Gj(j-k-Nu+1:j-k+1));
else
    G(j-(k+N1-1),1:j-k+1) = flip(Gj(1:j-k+1));
end
    H1(j-(k+N1-1),1:j+k-2+dB) = Gj(j-k+2:2*j+dB-1);
    dPj = max(j-1+dA,dC-1);
    H2(j-(k+N1-1),1:dPj+1) = Pj;
end
K = inv(G'*G+rho*eye(Nu+1,Nu+1))*G';
// Note: inverse need not be calculated
KH1 = K * H1; KH2 = K * H2;
R1 = [1 KH1(1,:)]; dR1 = length(R1)-1;
Sc = KH2(1,:); dSc = length(Sc)-1;
Tc = K(1,:); dTc = length(Tc)-1;
endfunction;
