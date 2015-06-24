//caption:stability_using_Nyquist_criterion
//example 7.17.2
//page 237
clf();
s=%s;
s1=-s;
disp("for K=1.25")
g=(1.25*(s+1))/((s+0.5)*(s-2));
g1=(1.25*(s1+1))/((s1+0.5)*(s1-2));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
mtlb_axis([-1.5 0.2 -0.3 0.3]);
xtitle('Nyquist plot of (10*(s-1))/((s+2)*(s+3));')
figure;
show_margins(GH,'nyquist')
disp("since the point(-1+%i0) is  encircled clockwise by Nyquist plot ,so N=-1 and P=1(given)")
N=-1;//no. of encirclement of -1+%i0 by G(s)H(s) plot anticlockwise
P=1;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=2,there are two roots of closed loop characterstics eq having positive real part, hence system is unstable.")