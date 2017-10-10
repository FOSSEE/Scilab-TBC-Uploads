s=%s;
syms K;
g=(K/(s^2);
// given K=10
K=10;


g=(5/(s^2));

G=syslin('c',g)
fmin=0.001;
fmax=1000;
bode(G,fmin,fmax)
show_margins(G)
xtitle("uncompensated system")
[gm,freqGM]=g_margin(G)
[pm,freqPM]=p_margin(G)
disp(gm,"gain_margin=")
disp((freqGM*2*%pi),"gain margin freq=");
disp(pm,"phase margin=")
disp((freqPM*2*%pi),"phase margin freq=");
