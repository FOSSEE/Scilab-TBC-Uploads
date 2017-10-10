clc
dw=999.8 //density of water in kg/metre-cube
dice=916.23 //density of ice in kg/metre-cube
P=100 //pressure in kPa
vw=1/dw
mprintf("vw=%fmetre-cube/kg\n",vw)//ans vary due to roundoff error
vi=1/dice 
mprintf("vi=%fmetre-cube/kg\n",vi)
W=P*10^3*(vw-vi)
mprintf("W=%fJ\n",W)//ans may vary due to roundoff error
deltaU=334.98 //in kJ
q=deltaU+(W*10^-3)
mprintf("q=%fkJ\n",q)//ans may vary due to roundoff error



