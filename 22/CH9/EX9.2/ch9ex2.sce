N_0=32; n=(0:N_0-1);
x_n= [ones(1,5) zeros(1,23) ones(1,4)];
for r=0:31
    X_r(r+1)=sum(x_n.*exp(-sqrt(-1)*r*2*3.14/N_0*n))/32;
end
subplot(2,1,1); r=n; plot2d3(r,real(X_r));
xlabel('r'); ylabel('X_r');
X_r=fft(x_n)/N_0;
subplot(2,1,2);
plot2d3(r,phasemag(X_r));
xlabel('r'); ylabel('phase of X_r');
disp(N_0,'period=')
disp(2*%pi/N_0,'omega=')
