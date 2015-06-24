s=%s;
syms K;
g=(K/(s*(s+1)*(s+4)));
g=((K/4)/(s*(s+1)*(0.25*s+1)))
// given Kv=5 :velocity error constant
K=20;
g=(5/(s*(s+1)*(0.25*s+1)))
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
disp("selecting zero of phase lag network at w=0.013 rad/sec and pole at w=0.13 rad/sec and applying gain to account attenuation factor")
gc=((s+0.13)/(10*(s+0.013)))
Gc=syslin('c',gc)
disp(Gc,"transfer function of lag compensator=");
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
