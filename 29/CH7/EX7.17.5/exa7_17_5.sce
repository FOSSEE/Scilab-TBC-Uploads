//caption:phase_margin
//example 7.17.5
//page 241
clf();
s=%s;
s1=-s;
disp("for K=3")
g=(2.5*3)/(s*(0.4*s+1)*(0.2*s+1));
g1=(2.5*3)/(s1*(0.4*s1+1)*(0.2*s1+1));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
mtlb_axis([-5 1  -500 500]);
xtitle('Nyquist plot of (2.5*3)/(s*(0.4*s+1)*(0.2*s+1))')
pm=p_margin(GH)
disp(pm,"phase margin=")