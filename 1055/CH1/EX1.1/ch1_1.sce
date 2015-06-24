// To determine the Base values and p.u values
clear
clc;
Sb=100;// base value of power(MVA)
Vb=33;// base value of voltage (Kv)
Vbl=Vb*110/32;
Vbm=Vbl*32/110;
Zp.ut=0.08*100*32*32/(110*33*33);
Zp.u.l=50*100/(Vbl^2);
Zp.um1=.2*100*30*30/(30*33*33);
Zp.um2=.2*100*30*30/(20*33*33);
Zp.um3=.2*100*30*30/(50*33*33);
mprintf("Base value of voltage in line = %.2f kV\n",Vbl);
mprintf("Base value of voltage in motor circuit=%.0f kV\n",Vbm);
mprintf("p.u value of reactance transformer =%.5f p.u\n",Zp.ut);
mprintf("p.u value of impedence of line=%.4f p.u\n",Zp.u.l);
mprintf("p.u value of reactance of motor 1 =%.4f p.u\n",Zp.um1);
mprintf("p.u value of reactance of motor 2 =%.3f p.u\n",Zp.um2);
mprintf("p.u value of reactance of motor 3 =%.4f p.u\n",Zp.um3);

