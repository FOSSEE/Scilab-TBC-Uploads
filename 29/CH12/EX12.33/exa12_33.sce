//caption:determine_close_loop_stability
//example 12_33
//page 550
s=%s;
g=(720*(s+1.25))/(s*(s+10)*(s^2+2*s+9));
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
