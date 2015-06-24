n=(-10:10); D_n=2/(3.14*(1-4.*n.^2).*(%i*6.*n+1));
clf;
subplot(2,1,1); plot2d3(n,abs(D_n));
subplot(2,1,2); plot2d3(n,atan(imag(D_n),real(D_n)));
