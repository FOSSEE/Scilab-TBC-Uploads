// Calculates the GPC law given by Eq. 12.36 on page 446. 
// 12.5

function [K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
gpc_N(A,dA,B,dB,k,N1,N2,Nu,rho)
D=[1 -1]; dD=1; AD=convol(A,D); dAD=dA+1; 
zj = 1; dzj = 0;
for i = 1:N1+k-1
    zj = convol(zj,[0,1]); dzj = dzj + 1;
end
G = zeros(N2-N1+1,Nu+1); 
H1 = zeros(N2-N1+1,k-1+dB); H2 = zeros(N2-N1+1,dA+1);
for j = k+N1:k+N2
    zj = convol(zj,[0,1]); dzj = dzj + 1;
    [Fj,dFj,Ej,dEj] = xdync(zj,dzj,AD,dAD,1,0);
    [Gj,dGj] = polmul(B,dB,Ej,dEj);
    if (j-k >= Nu)
    G(j-(k+N1-1),1:Nu+1) = flip(Gj(j-k-Nu+1:j-k+1));
else
    G(j-(k+N1-1),1:j-k+1) = flip(Gj(1:j-k+1));
end
    H1(j-(k+N1-1),1:k-1+dB) = Gj(j-k+2:j+dB);
    H2(j-(k+N1-1),1:dA+1) = Fj;
end
K = inv(G'*G+rho*eye(Nu+1,Nu+1))*G';
// Note: inverse need not be calculated
KH1 = K * H1; KH2 = K * H2;
R1 = [1 KH1(1,:)]; dR1 = length(R1)-1;
Sc = KH2(1,:); dSc = length(Sc)-1;
Tc = K(1,:); dTc = length(Tc)-1;
endfunction;
