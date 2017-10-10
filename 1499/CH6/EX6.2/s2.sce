s=%s;
s=poly(0,'s');
t=[0:0.05:10];
syms Kv;
g=(Kv/(s*(0.5*s+1)));
// given Kv=20
Kv=20;
g=(20/(s*(0.5*s+1)));
G=syslin('c',g)
fmin=0.01;
fmax=100;
subplot(2,2,1)
bode(G)

subplot(2,2,2), 
plot2d(t,csim('step',t,G))
//bode(G,fmin,fmax)
//show_margins(G)

xtitle("uncompensated system")
[gm,freqGM]=g_margin(G)
[pm,freqPM]=p_margin(G)
disp(gm,"gain_margin=")
disp((freqGM*2*%pi),"gain margin freq=");
disp(pm,"phase margin=")
disp((freqPM*2*%pi),"phase margin freq=");

gc=(1+8.7*s)/(1+166.7*s)
Gc=syslin('c',gc)
disp(Gc,"transfer function of lead compensator=");
G1=G*Gc
disp(G1,"overall transfer function=");
fmin=0.01;
fmax=100;

subplot(2,2,3)
bode(G1)

subplot(2,2,4), 
plot2d(t,csim('step',t,G1))


//bode(G1,fmin,fmax);
//show_margins(G1)
xtitle("compensated system")
[gm,freqGM]=g_margin(G1);
[pm,freqPM]=p_margin(G1);
disp(pm,"phase margin of compensated system=")
disp((freqPM*2*%pi),"gain cross over frequency=")
