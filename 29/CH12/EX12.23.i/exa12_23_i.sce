//caption:stability_using_Nyquist_criterion
//example 12_23_i
//page 535
clf();
s=%s;
s1=-s;
disp("for K=0.1")
g=(0.1*(s+10)*(s+40))/(s*(s+1)*(s+4));
g1=(0.1*(s1+10)*(s1+40))/(s1*(s1+1)*(s1+4));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
//mtlb_axis([-1.5 0.2 -0.3 0.3]);
xtitle('Nyquist plot of (0.1*(s+10)*(s+40))/(s*(s+1)*(s+4))')
figure;
show_margins(GH,'nyquist')
disp("since the point(-1+%i0) is  not encircled clockwise by Nyquist plot ,so N=0 and P=0")
N=0;//no. of encirclement of -1+%i0 by G(s)H(s) plot anticlockwise
P=0;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=0,there are no roots of closed loop characterstics eq having positive real part, hence system is stable.")