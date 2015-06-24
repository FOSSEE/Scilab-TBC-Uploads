s=%s;
syms Kv;
g=(Kv/(s*(s+1)));
// given Kv=12
Kv=12;
g=(12/(s*(s+1)));
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
printf("since P.M is less than desired value so we need phase lead network")
disp("selecting zero of lead compensting network at w=2.65rad/sec and pole at w=7.8rad/sec and applying gain to account attenuation factor.")
gc=(1+0.377*s)/(1+0.128*s)
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
