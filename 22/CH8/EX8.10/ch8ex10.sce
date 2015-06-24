//signals and systems
// sampling: the bridge between continuous to discrete
T_0 = 4;
N_0 = 32;
T = T_0/N_0;n = 0:N_0-1;r = n;
x_n = [ones(1,4),0.5,zeros(1,23),0.5,ones(1,3)]';
H_r = [ones(1,8),0.5,zeros(1,15),0.5,ones(1,7)]';
X_r = fft(x_n,-1);
Y_r = H_r .*(X_r);y_n = mtlb_ifft(Y_r);
subplot(2,2,1);
plot2d3(n,x_n);
plot(n,x_n,'r.')
xtitle('xn','n')
subplot(2,2,2);
plot2d3(r,real(X_r));
plot(r,real(X_r),'ro')
xtitle('Xr','r')
subplot(2,2,3);
plot2d3(n,real(y_n));
plot(n,real(y_n),'r.')
xtitle('yn','n')
subplot(2,2,4);
plot2d3(r,(X_r).*H_r);
plot(r,(X_r).*H_r,'ro')
xtitle('XrHr','r')