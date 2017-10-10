s=%s;



g=(1000*(1+0.2*s)/(s*(s*0.1+1)));

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
