// Performance curve for GMVC design of MacGregor's first control problem
// 13.10

exec('gmv.sci',-1);
exec('xdync.sci',-1);
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
exec('polmul.sci',-1);
exec('poladd.sci',-1);
exec('cl.sci',-1);
exec('zpowk.sci',-1);
exec('tfvar.sci',-1);
exec('l2r.sci',-1);
exec('transp.sci',-1);
exec('tf.sci',-1);
exec('covar_m.sci',-1);

// MacGregor's first control problem
A = [1 -1.4 0.45]; dA = 2; C = [1 -0.5]; dC = 1;
B = 0.5*[1 -0.9]; dB = 1; k = 1; int1 = 0;
u_gmv = []; y_gmv = []; uy_gmv = [];

for rho = 0:0.1:10,
    [S,dS,R,dR] = gmv(A,dA,B,dB,C,dC,k,rho,int1);
    [Nu,dNu,Du,dDu,Ny,dNy,Dy,dDy,yvar,uvar] = ...
        cl(A,dA,B,dB,C,dC,k,S,dS,R,dR,int1);
    u_gmv = [u_gmv uvar]; y_gmv = [y_gmv yvar]; 
    uy_gmv = [uy_gmv; [rho uvar yvar]];
end
plot(u_gmv,y_gmv,'b')
save('gmv_mac1.dat','uy_gmv');
