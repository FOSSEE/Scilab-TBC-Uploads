//signals and systems
//sampling:the bridge from continuous to discrete
//DFT to compute the fourier transform of e^-2t.u(t)
T_0 = 4;
N_0 = 256;
T = T_0/N_0;
t = (0:T:T*(N_0-1))';
x = T*exp(-2*t);
x = mtlb_i(x,1,(T*(exp(-2*T_0)+1))/2);
X_r = fft(x);
r = (-N_0/2:N_0/2-1)';
omega_r = ((r*2)*%pi)/T_0;
omega = linspace(-%pi/T,%pi/T,4097);
X = 1 ./(%i*omega+2);
subplot(2,1,1);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(omega,abs(X),"k",omega_r,fftshift(abs(X_r)),"ko");
xtitle("magnitude of X(omega) for true FT and DFT");
subplot(2,1,2);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(omega,atan(imag(X),real(X)),"k",omega_r,fftshift(atan(imag(X_r),real(X_r))),"ko");
xtitle("angle of X(omega) for true FT and DFT");