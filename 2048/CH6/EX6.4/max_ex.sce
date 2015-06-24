// To demonstrate the maximum property of ACF at zero lag, as discussed in Example 6.8 on page 175.
// 6.4

exec('label.sci',-1);

S1 = [1 2 3 4]; 
S2 = [1,-2,3,-4];
S3 = [-1,-2,3,4];
len = length(S1)-1; 
xv = -len:len;
m = 1;
xi = rand(4,1,'normal');
Spxi1 = S1 + m*xi';
Spxi2 = S2 + m*xi';
Spxi3 = S3 + m*xi';
n = 1:length(S1);
plot(n,Spxi1,'o-',n,Spxi2,'x--',n,Spxi3,'*:');
label('',4,'n','y',4);
ACF1 = xcov(Spxi1,"coeff");
ACF2 = xcov(Spxi2,"coeff");
ACF3 = xcov(Spxi3,"coeff");
xset('window',1);
a = gca();
a.data_bounds = [-len -1; len 1];
plot(xv,ACF1,'o-',xv,ACF2,'x--',xv,ACF3,'*:');
label('',4,'Lag','ACF',4);
