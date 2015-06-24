n=(-10:10); D_n=0.504./(1+ %i*4*n);
clf;
subplot(2,1,1); plot2d3(n,abs(D_n));
subplot(2,1,2); plot2d3(n,atan(imag(D_n),real(D_n)));
