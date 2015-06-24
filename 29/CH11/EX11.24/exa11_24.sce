//caption:stability_using_Nyquist_criterion
//example 11_24
//page 496
clf;
s=%s;
s1=-s;
g=50/((s+1)*(s+2));
g1=50/((s1+1)*(s1+2));
GH=syslin('c',g)
GH1=syslin('c',g1)
nyquist(GH);
nyquist(GH1);
mtlb_axis([-5 30 -20 20]);
xtitle('Nyquist plot of 50/((s+1)*(s+2))')
figure;
show_margins(GH,'nyquist')
disp("since the point(-1+%i0) is not encircled by Nyquist plot ,so N=0 and P=0(given)")
N=0;//no. of encirclement of -1+%i0 by G(s)H(s) plot
P=0;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=0,there are no roots of closed loop characterstics eq having positive real part, hence system is stable.")