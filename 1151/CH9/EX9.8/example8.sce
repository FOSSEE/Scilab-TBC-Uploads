s=%s;
 K=23.6;//K=23.6sec^-1
g = K/(s*(s+4)*(s+5));
 G= syslin ('c',g)
fmin =0.01;
fmax =100;
bode (G,fmin , fmax )
show_margins (G)
xtitle (" uncompensated sys t em")
[gm , freqGM ]= g_margin (G)
[pm , freqPM ]= p_margin (G)
disp(gm ," gain margin=")
disp(( freqGM *2* %pi)," g a in margin f r e q=");
disp(pm ," phase margin=")
disp(( freqPM *2* %pi)," phas e margin f r e q=");
disp("since the phase margin is greater than desired phase margin system need lag compensator ")
gc =(s +0.4) /(s+0.0944);
 Gc= syslin ('c',gc);
disp (Gc ," transfer function of lag compensator=");
G1=G*Gc
disp (G1 ," overall transfer function=");
fmin =0.01;
 fmax =100;
bode (G1 ,fmin , fmax );
show_margins (G1)
xtitle (" compensated sys t em")
[gm , freqGM ]= g_margin (G1);
[pm , freqPM ]= p_margin (G1);
disp (pm ," phase margin of compensated system=")
disp (( freqPM *2* %pi)," gain crossover frequency=")
