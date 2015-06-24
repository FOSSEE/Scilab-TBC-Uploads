omega= linspace(-%pi,%pi,106);
H= syslin('c',(s/(s-0.8)));
H_omega= squeeze(calfrq(H,0.01,10));
size(H_omega)
subplot(2,1,1); plot2d(omega, abs(H_omega));
//xlabel('\omega');
//ylabel('|H[e^{j\omega}]|');
subplot(2,1,2); plot2d(omega,atan(imag(H_omega),real(H_omega))*180/%pi);
//xlabel('\omega');
//ylabel('\angle H[e^{j \omega}] [deg]');