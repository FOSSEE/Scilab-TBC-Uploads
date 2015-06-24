
//calculating no. of turns per phase
Vsp=440/sqrt(3)  //secondary phase voltage
Et=8  //emf per turn in volt
Ts=round(Vsp/Et)
Vpp=1100  //primary phase voltage
Tp=Ts*Vpp/Vsp
mprintf("No. of turns per phase on primary winding=%d\nNo. of turns per phase on secondary winding=%d\n", Tp, Ts)
//calculating net cross-sectional area of core
f=50  //frequency
Bm=1.3  //flux density
Ai=Et/(4.44*f*Bm)
mprintf("Net cross-sectional area of core, Ai=%d cm^2", round(Ai*1D+4))
