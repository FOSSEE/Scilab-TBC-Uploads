// Model derivation for GPC design in Example 12.1 on page 439.
// 12.1

exec('xdync.sci',-1);
exec('polmul.sci',-1);
exec('flip.sci',-1);
exec('rowjoin.sci',-1);
exec('polsize.sci',-1);
exec('left_prm.sci',-1);
exec('t1calc.sci',-1);
exec('indep.sci',-1);
exec('seshft.sci',-1);
exec('makezero.sci',-1);
exec('move_sci.sci',-1);
exec('colsplit.sci',-1);
exec('clcoef.sci',-1);
exec('cindep.sci',-1);

// Camacho and Bordon's GPC example; model formation

A=[1 -0.8]; dA=1; B=[0.4 0.6]; dB=1; N=3; k=1;
D=[1 -1]; dD=1; AD=convol(A,D); dAD=dA+1; Nu=N+k;
zj = 1; dzj = 0; G = zeros(Nu); 
H1 = zeros(Nu,k-1+dB); H2 = zeros(Nu,dA+1);

for j = 1:Nu,
    zj = convol(zj,[0,1]); dzj = dzj + 1;
    [Fj,dFj,Ej,dEj] = xdync(zj,dzj,AD,dAD,1,0);
    [Gj,dGj] = polmul(B,dB,Ej,dEj);
    G(j,1:dGj) = flip(Gj(1:dGj));
    H1(j,1:k-1+dB) = Gj(dGj+1:dGj+k-1+dB);
    H2(j,1:dA+1) = Fj;
end

G,H1,H2
