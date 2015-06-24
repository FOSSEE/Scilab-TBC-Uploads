// PACF plot of an MA process decays slowly, as discussed in Example 6.19 on page 190.
// 6.12

exec('plotacf.sci',-1);
exec('pacf.sci',-1);
exec('label.sci',-1);

m = armac(1,0,[1,-0.9,0.2],1,1,1);
xi = 0.1*rand(1,10000);
v = arsimul(m,xi);
plotacf(v,1,11,1);
xset('window',1);
pacf(v,11);
