s=%s;
syms Ka;
g=(Ka/(s^2*(1+0.2*s)));
// given Ka=10
Ka=10;
g=(10/(s^2*(1+0.2*s)));
G=syslin('c',g)
fmin=0.01;
fmax=100;
bode(G,fmin,fmax)
show_margins(G)
xtitle("uncompensated system")
[gm,freqGM]=g_margin(G)
[pm,freqPM]=p_margin(G)
disp(gm,"gain_margin=")
disp((freqGM*2*%pi),"gain margin freq=");
disp(pm,"phase margin=")
disp((freqPM*2*%pi),"phase margin freq=");
disp("since P.M is negative so system is unstable")
disp("selecting zero of lead compensating network at w=2.8 rad/sec and pole at w=14 rad/sec and applying gain to account attenuation factor.")
gc=(1+0.358*s)/(1+0.077*s)
Gc=syslin('c',gc)
disp(Gc,"transfer function of lead compensator=");
G1=G*Gc
disp(G1,"overall transfer function=");
fmin=0.01;
fmax=100;
bode(G1,fmin,fmax);
show_margins(G1)
xtitle("compensated system")
[gm,freqGM]=g_margin(G1);
[pm,freqPM]=p_margin(G1);
disp(pm,"phase margin of compensated system=")
disp((freqPM*2*%pi),"gain cross over frequency=")
