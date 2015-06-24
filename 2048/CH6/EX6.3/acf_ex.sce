// To demonstrate the periodicity property of ACF as discussed in Example 6.7 on page 173
// 6.3

exec('plotacf.sci',-1);
exec('label.sci',-1);

L = 500;
n = 1:L;
w = 0.1;
S = sin(w*n);
m = 1;
xi = m*rand(L,1,'normal');
Spxi = S+xi';
xset('window',0);
plot(Spxi);
label('',4,'n','y',4)
xset('window',1);
plotacf(Spxi,1,L,1);




