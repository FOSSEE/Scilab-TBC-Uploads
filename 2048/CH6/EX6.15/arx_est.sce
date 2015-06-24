// Determination of ARX parameters as described in Example 6.25 on page 203.
// 6.15

exec('armac1.sci',-1);
exec('cra.sci',-1);
exec('arx.sci',-1);
exec('filt.sci',-1);
exec('covf.sci',-1);
exec('stem.sci',-1);

process_arx = armac1([1 -0.5],[0 0 0.6 -0.2],1,1,1,0.05);
u = prbs_a(5000,250);
xi = rand(1,5000,'normal');
y = arsimul(process_arx,[u xi]);
z = [y(1:length(u))' u'];
zd = detrend(z,'constant');

// Compute IR for time-delay estimation
[ir,r,cl_s] = cra(detrend(z,'constant'));

// Time-delay = 2 samples
// Estimate ARX model (assume known orders)
na = 1; nb = 2; nk = 2;
[theta_arx,cov_arx,nvar,resid] = arx(zd,na,nb,nk); 

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
