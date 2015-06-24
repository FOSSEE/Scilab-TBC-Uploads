//caption:design_lead_compensator
//example 11_31
//page 339
s=%s;
clf();
syms K;
g=(K/(s*(1+0.2*s)));
Kv=limit(s*g,s,0);//static velocity error coefficient
//since Kv=10
K=10;
g=(10/(s*(1+0.2*s)));
G=syslin('c',g)
fmin=0.01; 
fmax=100; 
bode(G, fmin, fmax) 
show_margins(G)
[gm,freqGM]=g_margin(G);
[pm,freqPM]=p_margin(G);
disp(gm,"gain_margin=");
disp((freqGM*2*%pi),"gain_margin_freq=");
disp(pm,"phase_margin=");
disp((freqPM*2*%pi),"phase_margin_freq_or_gain_cross_over_frequency=");
disp("since P.M is less than desired value so we need phase lead network ")
disp("selecting zero of lead compensating network at w=5.5rad/sec and pole at w=13.8rad/sec and applying gain to account attenuatin factor .")
gc=(1+0.18*s)/(1+0.072*s)
Gc=syslin('c',gc)
disp(Gc,"transfer function of lead compensator=");
G1=G*Gc
disp(G1,"overall transfer function=");
fmin=0.01; 
fmax=100; 
figure();
bode(G1, fmin, fmax);
show_margins(G1)
[gm,freqGM]=g_margin(G1);
[pm,freqPM]=p_margin(G1);
disp(pm,"phase_margin_of_compensated_system=");
disp((freqPM*2*%pi),"gain_cross_over_frequency=");