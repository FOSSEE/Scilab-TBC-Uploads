// Long division of problems discussed in Example 4.32 on page 102
// 4.11

exec('tf.sci',-1);
exec('label.sci',-1);

num = [11 -15 6];
den = convol([1 -2], convol([1 -1],[1 -1]));
u = [1 zeros(1,4)];
y = filter(num,den,u);
G = tf(num,den,-1);
u1=zeros(1,90); u1(1)=1;
x1=dsimul(tf2ss(G),u1);
plot2d(x1)
label('Impulse Response',4,'Time(seconds)','Amplitude',4)
