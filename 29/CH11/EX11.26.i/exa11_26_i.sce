//caption:stability_using_Nyquist_criterion
//example 11_26_i
//page 497
clf();
s=%s;
s1=-s;
disp("for K=10")
g=(10*(s-1))/((s+2)*(s+3));
g1=(10*(s1-1))/((s1+2)*(s1+3));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
mtlb_axis([-2 2 -2.5 2.5]);
xtitle('Nyquist plot of (10*(s-1))/((s+2)*(s+3));')
disp("since the point(-1+%i0) is  encircled clockwise by Nyquist plot ,so N=-1 and P=1(given)")
N=-1;//no. of encirclement of -1+%i0 by G(s)H(s) plot anticlockwise
P=0;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=1,there is one roots of closed loop characterstics eq having positive real part, hence system is unstable.")

