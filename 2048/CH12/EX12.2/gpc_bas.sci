// Calculates the GPC law given by Eq. 12.19 on page 441.
// 12.2

function [K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
gpc_bas(A,dA,B,dB,N,k,rho)
D=[1 -1]; dD=1; AD=convol(A,D); dAD=dA+1; Nu=N+1;
zj = 1; dzj = 0; G = zeros(Nu,Nu); 
H1 = zeros(Nu,k-1+dB); H2 = zeros(Nu,dA+1);
for j = 1:Nu,
    zj = convol(zj,[0,1]); dzj = dzj + 1;
    [Fj,dFj,Ej,dEj] = xdync(zj,dzj,AD,dAD,1,0);
    [Gj,dGj] = polmul(B,dB,Ej,dEj);
    G(j,1:dGj) = flip(Gj(1:dGj));
    H1(j,1:k-1+dB) = Gj(dGj+1:dGj+k-1+dB);
    H2(j,1:dA+1) = Fj;
end
K = inv(G'*G+rho*eye(Nu,Nu))*G';
// Note: inverse need not be calculated
KH1 = K * H1; KH2 = K * H2;
R1 = [1 KH1(1,:)]; dR1 = length(R1)-1;
Sc = KH2(1,:); dSc = length(Sc)-1;
Tc = K(1,:); dTc = length(Tc)-1;
endfunction;
