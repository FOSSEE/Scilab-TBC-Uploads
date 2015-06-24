// Determination of order of AR(p) process, as discussed in Example 6.18 on page 189.
// 6.9

exec('pacf.sci',-1);
exec('label.sci',-1);

// Define model and generate data
m = armac([1,-1,0.5],0,1,1,1,1);
xi = 0.1*rand(1,10000,'normal');
v = arsimul(m,xi); 

// Plot noise, plant output and PACF
subplot(2,1,1), plot(v(1:500));
label('',6,'','v',6);
subplot(2,1,2), plot(xi(1:500));
label('',6,'n','xi',6);
xset('window',1)
pacf(v,10);


