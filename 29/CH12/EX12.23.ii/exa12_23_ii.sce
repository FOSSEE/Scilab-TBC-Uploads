//caption:stability_using_Nyquist_criterion
//example 12_23_ii
//page 535
disp("for K=1")
g=(0.1*(s+10)*(s+40))/(s*(s+1)*(s+4));
g1=(0.1*(s1+10)*(s1+40))/(s1*(s1+1)*(s1+4));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
//mtlb_axis([-3 0.5 -0.6 0.6]);
xtitle('Nyquist plot of (0.1*(s+10)*(s+40))/(s*(s+1)*(s+4))')
figure;
show_margins(GH,'nyquist')
disp("since the point(-1+%i0) is  encircled twice clockwise by Nyquist plot ,so N=2 and P=0(given)")
N=-2;//no. of encirclement of -1+%i0 by G(s)H(s) plot anticlockwise
P=0;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=2,there are two roots of closed loop characterstics eq having positive real part, hence system is unstable.")
