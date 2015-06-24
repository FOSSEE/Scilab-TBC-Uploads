//caption:design_suitable_compensator
//example 8.6.3
//page 344
clc;
s=%s;
clf();
syms K;
g=(K/(s*(1+0.5*s)*(1+0.2*s)));
Kv=1/0.125//static velocity error coefficient(Kv=desired output velocity/steady state error)
//since Kv=8, as system is type 1 , so K=Kv;
K=8;
g=(8/(s*(1+0.5*s)*(1+0.2*s)));
G=syslin('c',g)
fmin=0.01; 
fmax=100; 
bode(G, fmin, fmax) 
show_margins(G)
xtitle("uncompensated system")
[gm,freqGM]=g_margin(G);
[pm,freqPM]=p_margin(G);
disp(gm,"gain_margin=");
disp((freqGM*2*%pi),"gain_margin_freq_or_phase_cross_over_frequency==");
disp(pm,"phase_margin=");
disp((freqPM*2*%pi),"phase_margin_freq_or_gain_cross_over_frequency=");
disp("since gain crossover freq and phase crossover freq are very close to each other. So, system is marginally stable");
disp("so we need phase lag network ")
disp("selecting zero of lead compensating network at w=0.18rad/sec and pole at w=0.04rad/sec and applying gain to account attenuatin factor .")
gc=(1+5.55*s)/(1+24.7*s)
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
disp(gm,"gain_margin=");
disp((freqGM*2*%pi),"gain_margin_freq_or_phase_cross_over_frequency==");
disp(pm,"phase_margin_of_compensated_system=");
disp((freqPM*2*%pi),"gain_cross_over_frequency=");