clc
T=200//temperature in degree celsius
P=15.549 //pressure in bars
hf=852.37
hg=2790.9
hfg=hg-hf
mprintf("Saturation pressure=%f bar\n",P)
mprintf("Latent heat of vaporisation=%f kJ/kg\n",hfg)
vg=0.1272 //in metre-cube/kg
ug=(hg*10^3)-(P*10^5*vg)
mprintf("ug=%fkJ/kg",ug/1000)//ans may vary due to roundoff error


