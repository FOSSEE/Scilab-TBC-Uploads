clc
T1=100
T2=120
CPf=4.23
CPg=1.55
h1=2256.94
deltahfg=(CPg-CPf)*(T2-T1)
mprintf("hfg2-hfg1=%f\n",deltahfg)
hfg=h1+deltahfg
mprintf("hfg at 120 celsius=%fkJ/kg",hfg)

