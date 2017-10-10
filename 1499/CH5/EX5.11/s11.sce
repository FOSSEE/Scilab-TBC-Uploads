s=%s;



g=(100*(3+s)/(s*(s+2)*(s^2+4*s+100)));

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
