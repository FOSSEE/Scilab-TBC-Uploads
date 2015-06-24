//caption:gain_and_phase_margin
//example 12_27
//page543
clf();
s=%s;
s1=-s;
disp("for K=0.5")
g=(0.5)/(s*(s+1)^2);
GH=syslin('c',g);
nyquist(GH);
//mtlb_axis([-5 1  -500 500]);
xtitle('Nyquist plot of (2.5*3)/(s*(0.4*s+1)*(0.2*s+1))')
pm=p_margin(GH)
disp(pm,"phase margin=")
gm=g_margin(GH)
disp(gm,"gain margin=")