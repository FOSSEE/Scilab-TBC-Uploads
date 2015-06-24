//caption:design_phase_lead_compensator
//example 8.6.2
//page 340
clc;
s=%s;
clf();
syms K;
g=(K/(s^2*(1+0.05*s)));
Ka=limit(s^2*g,s,0);//static acceleration error coefficient
//since Ka=100
K=100;
g=(100/(s^2*(1+0.05*s)));
G=syslin('c',g)
fmin=0.01; 
fmax=100; 
bode(G, fmin, fmax) 
show_margins(G)
xtitle("uncompensated system")
[gm,freqGM]=g_margin(G);
[pm,freqPM]=p_margin(G);
disp(gm,"gain_margin=");
disp((freqGM*2*%pi),"gain_margin_freq=");
disp(pm,"phase_margin=");
disp((freqPM*2*%pi),"phase_margin_freq_or_gain_cross_over_frequency=");
disp("since P.M is negaative so system is unstable ")
disp("selecting zero of lead compensating network at w=5rad/sec and pole at w=54rad/sec and applying gain to account attenuatin factor .")
gc=(1+0.2*s)/(1+0.0186*s)
Gc=syslin('c',gc)
disp(Gc,"transfer function of lead compensator=");
G1=G*Gc
disp(G1,"overall transfer function=");
fmin=0.01; 
fmax=100; 
figure();
bode(G1, fmin, fmax) 
show_margins(G1)
xtitle("compensated system")
[gm,freqGM]=g_margin(G1);
[pm,freqPM]=p_margin(G1);
disp(pm,"phase_margin_of_compensated_system=");
disp((freqPM*2*%pi),"gain_cross_over_frequency=");