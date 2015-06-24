//caption:stability_using_bode_plot
//example 7.19.1
//page 280
s=%s;
g=50/((s+1)*(s+2));
G=syslin('c',g)
fmin=0.01; 
fmax=100; 
bode(G, fmin, fmax) 
show_margins(G)
gm=g_margin(G)
pm=p_margin(G)
disp(gm,"gain_margin=");
disp(pm,"phase_margin=");
disp("since gain and phase margin are both positive so system is stable")
