s=%s;//given Kv=1000sec^-1
Kv =1000;
g =Kv/( s*(0.1*s +1)* (1+.001*s))
G= syslin ('c',g)
fmin =0.01;
fmax =100;
bode (G,fmin , fmax )
show_margins (G)
xtitle (" uncompensated system")
[gm , freqGM ]= g_margin (G)
[pm , freqPM ]= p_margin (G)
disp (gm ," g a i n ma r g i n=")
disp (( freqGM *2* %pi)," =gain margin frequency");
disp (pm ," phas e margin=")
disp (( freqPM *2* %pi)," phase margin frequency=");
printf (" sine the phase margin is less than the desired pahse margin so we need pahse lead compensator ")
gc =(1+0.016* s) /(1+0.00214* s)
Gc= syslin ('c',gc)
disp (Gc ," transfer function of lead compensator=");
 G1=G*Gc
disp (G1 ," overall transfer function=");
fmin =0.01;
 fmax =100;
 bode (G1 ,fmin , fmax );
 show_margins (G1)
xtitle (" compensated system")
 [gm , freqGM ]= g_margin (G1);
[pm , freqPM ]= p_margin (G1);
disp (pm ," phase margin of compensated system=")
disp (( freqPM *2* %pi)," gain crossover frequency=")
