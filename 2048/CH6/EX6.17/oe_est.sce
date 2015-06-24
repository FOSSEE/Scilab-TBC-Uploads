// Determination of OE parameters as described in Example 6.28 on page 209.
// 6.17

exec('armac1.sci',-1);
exec('oe.sci',-1);
exec('cra.sci',-1);
exec('stem.sci',-1);
exec('filt.sci',-1);
exec('covf.sci',-1);
exec('deconvol.sci',-1);

b = [0 0 0.6 -0.2];
f = [1 -0.5]; 
c = 1; d = 1; 
process_oe = armac1(1,b,c,d,f,0.05); 
u = prbs_a(2555,250);
xi = rand(1,2555,'normal');
y = arsimul(process_oe,[u xi]);
z = [y(1:length(u))' u'];
zd = detrend(z,'constant');

// Compute IR for time-delay estimation
[ir,r,cl_s] = cra(zd);

// Time-delay = 2 samples
// Estimate ARX model (assume known orders)
nb = 2; nf = 1; nk = 2;
[thetaN,covfN,nvar,resid] = oe(zd,nb,nf,nk);

// Residual plot
[cov1,m1] = xcov(resid,24,"coeff");
xset('window',1); 
subplot(2,1,1)
stem(0:24,cov1(25:49)');xgrid();
xtitle('Correlation function of residuals from output y1','lag');
[cov2,m2] = xcov(resid, zd(:,2),24,"coeff");
subplot(2,1,2)
stem(-24:24,cov2');xgrid();
xtitle('Cross corr. function between input u1 and residuals from output y1','lag');

