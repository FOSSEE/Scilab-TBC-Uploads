C=1/4
Vc_0m=12/(12+6)*12
Vc_0p=8
disp(Vc_0p)
t=0
V_0p=6*cos(t)

//at t=0+
Vth=12/(12+6)*6
Rth=6*12/(6+12)
ic_0p=(Vth-8)/Rth
disp(ic_0p)
d_by_dt_Vc_0p=ic_0p/C
disp(d_by_dt_Vc_0p)