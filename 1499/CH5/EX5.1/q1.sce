s=%s;

g=(1/(1+2*s));

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
