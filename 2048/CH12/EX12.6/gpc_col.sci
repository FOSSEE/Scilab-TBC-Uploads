// Calculates the GPC law given by Eq. 12.36 on page 446.
// 12.6

function [K,KH1,KH2,Tc,dTc,Sc,dSc,R1,dR1] = ...
gpc_col(A,dA,B,dB,C,dC,N,k,rho)
D=[1 -1]; dD = 0; AD=convol(A,D); dAD=dA+1; zj=1; dzj=0; 
Nu = N+1; G=zeros(Nu,Nu); H1=zeros(Nu,2*k+N-2+dB); 
H2 = zeros(Nu,k+N+dA);
for j = 1:Nu,
    zj = convol(zj,[0,1]); dzj = dzj + 1;
    [Fj,dFj,Ej,dEj] = ...
        xdync(zj,dzj,AD,dAD,C,dC);
    [Nj,dNj,Mj,dMj] = ...
        xdync(zj,dzj,C,dC,1,0);
    [Gj,dGj] = polmul(Mj,dMj,Ej,dEj);
    [Gj,dGj] = polmul(Gj,dGj,B,dB);
    [Pj,dPj] = polmul(Mj,dMj,Fj,dFj);
    [Pj,dPj] = poladd(Nj,dNj,Pj,dPj);
    j,Fj,Ej,Mj,Nj,Gj,Pj
    G(j,1:j) = flip(Gj(1:j));
    H1(j,1:dGj-j+1) = Gj(j+1:dGj+1); 
    H2(j,1:dPj+1) = Pj;
end
K = inv(G'*G+rho*eye(Nu,Nu))*G'
// Note: inverse need not be calculated
KH1 = K * H1; KH2 = K * H2;
R1 = [1 KH1(1,:)]; dR1 = length(R1)-1;
Sc = KH2(1,:); dSc = length(Sc)-1;
Tc = K(1,:); dTc = length(Tc)-1;
endfunction;
