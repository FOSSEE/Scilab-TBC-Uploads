//caption:gain_margin_and_phase_margin
//example 11_22
//page 493
s=%s;
g=((2*(s+0.25))/(s^2*(s+1)*(s+0.5)));
G=syslin('c',g)
fmin=0.1; 
fmax=100; 
bode(G, fmin, fmax) 
[gm,freqGM]=g_margin(G);
[pm,freqPM]=p_margin(G);
show_margins(G);
disp(gm,"gain_margin=");
disp((freqGM*2*%pi),"gain_margin_freq=");
disp(pm,"phase_margin=");
disp((freqPM*2*%pi),"phase_margin_freq=");
show_margins(G);
disp("since gain and phase margin are both negative so system is unstable")
