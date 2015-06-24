//signals and systems
//sampling:the bridge from continuous to discrete
//DFT to compute the fourier transform of 8rect(t)
T_0 = 4;
N_0 = 32;
T = T_0/N_0;
x_n = [ones(1,4) 0.5 zeros(1,23) 0.5 ones(1,3)]';
size(x_n)
x_r = fft(x_n);r = (-N_0/2:(N_0/2)-1)';
omega_r = ((r*2)*%pi)/T_0;
size(omega_r)
size(omega)
omega = linspace(-%pi/T,%pi/T,4097);
X = 8*(sinc(omega/2));
size(X)
figure(1);
subplot(2,1,1);
plot(omega,abs(X),"k");
plot(omega_r,fftshift(abs(x_r)),"ko")
xtitle("angle of X(omega) for true FT and DFT");
a=gca();
subplot(2,1,2);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(omega,atan(imag(X),real(X)),"k",omega_r,fftshift(atan(imag(x_r),real(x_r))),'r.');
xtitle("angle of X(omega) for true FT and DFT");
