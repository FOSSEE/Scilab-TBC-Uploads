// Determination of ARMAX parameters as described in Example 6.27 on page 206.
// 6.16

exec('cra.sci',-1);
exec('stem.sci',-1);
exec('filt.sci',-1);
exec('covf.sci',-1);

process_armax = armac([1 -0.5],[0 0 0.6 -0.2],[1 -0.3],1,1,0.05);
u = prbs_a(5000,250);
xi = rand(1,5000);
y = arsimul(process_armax,[u xi]);
z = [y(1:length(u))' u'];
zd = detrend(z,'constant');

//Compute IR for time-delay estimation
[ir,r,cl_s] = cra(detrend(z,'constant'));

//Estimate ARMAX model (assume known orders)
na = 1; nb = 3; nc = 1; nk = 2;
[theta_armax,resid] = armax1(na,nb,nc,zd(:,1)',zd(:,2)',1);
disp(theta_armax)

// Residual plot
[cov1,m1] = xcov(resid,24,"coeff");
xset('window',1); 
subplot(2,1,1)
stem(0:24,cov1(25:49));xgrid();
xtitle('Correlation function of residuals from output y1','lag');
[cov2,m2] = xcov(resid, zd(:,2),24,"coeff");
subplot(2,1,2)
stem(-24:24,cov2);xgrid();
xtitle('Cross corr. function between input u1 and residuals from output y1','lag');






