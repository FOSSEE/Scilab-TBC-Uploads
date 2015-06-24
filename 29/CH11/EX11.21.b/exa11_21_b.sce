//Caption:bode_plot
//example 11_21_b
//page 491
s=%s;
num=210
den=(s*(s+2)*(s^2+12*s+6));
g=num/den;
G=syslin('c',g)
fmin=0.01; 
fmax=100; 
bode(G, fmin, fmax) 
show_margins(G)
gm=g_margin(G)
pm=p_margin(G)
disp(gm,"gain_margin=");
disp(pm,"phase_margin=");