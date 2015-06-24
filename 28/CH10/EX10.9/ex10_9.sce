s=%s;
syms K;
g=(K/(s*(0.1*s+1)*(0.2*s+1)));
// given Kv=30 :velocity error constsnt
K=30;
g=(30/(s*(0.1*s+1)*(0.2*s+1)))
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
disp("If lead compenstion is used bandwidth will increase resulting in undesirable system sensitive to noise. If lag compensation is used bandwidth decreases so as to fall short of specified value of 12 rad/sec resulting in sluggish system")
disp("/n hence we use a lag-lead compensator")
// lag compensator
disp("selecting zero of phase lag network w=1 rad/sec and pole at w=0.1 rad/sec and applying gain to account attenuation factor")
gc1=((s+1)/(10*s+1));
Gc1=syslin('c',gc1)
disp(Gc1,"transfer function of lag compensator")
// lead compensator
disp("selecting zero of lead compensator at w=0.425rad/sec and pole at w=0.0425rad/sec ")
gc2=((0.425*s+1)/(0.0425*s+1));
Gc2=syslin('c',gc2)
disp(Gc2,"transfer function of lead compensator")
Gc=Gc1*Gc2 // transfer function of lag and lead sections
disp(Gc,"transfer function of lag and lead sections")
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
