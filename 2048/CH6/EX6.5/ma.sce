// Demonstrate the order of MA(q) as discussed in Example 6.11 on page 182.
// 6.5

exec('plotacf.sci',-1);
exec('label.sci',-1);

xi = 0.1*rand(1,10000,'normal');  
a = 1; b = [];
d = [1 1 -0.5];
ar = armac(a,b,d,1,1,1);
v = arsimul(ar,xi);
z = [v xi];

// Plot noise, plant output and ACF
subplot(2,1,1), plot(v(1:500))
label('',4,'','v',4)
subplot(2,1,2), plot(xi(1:500))
label('',4,'n','xi',4)
xset('window',1)
plotacf(v,1,11,1);








