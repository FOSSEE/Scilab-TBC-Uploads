//caption:stability_using_Nyquist_criterion
//example 7.17.2_ii
//page 237
s=%s;
s1=-s;
disp("for K=2.5")
g=(2.5*(s+1))/((s+0.5)*(s-2));
g1=(2.5*(s1+1))/((s1+0.5)*(s1-2));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
mtlb_axis([-3 0.5 -0.6 0.6]);
xtitle('Nyquist plot of (2.5*(s+1))/((s+0.5)*(s-2))')
figure;
show_margins(GH,'nyquist')
disp("since the point(-1+%i0) is  encircled anticlockwise by Nyquist plot ,so N=1 and P=1(given)")
N=1;//no. of encirclement of -1+%i0 by G(s)H(s) plot anticlockwise
P=1;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=0,there are no roots of closed loop characterstics eq having positive real part, hence system is stable.")