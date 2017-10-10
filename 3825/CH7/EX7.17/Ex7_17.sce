clc
si=7.0248
sg=7.3598
sf=1.3027
Xe=(si-sf)/(sg-sf)
mprintf("Xe=%f\n",Xe)//ans vary due to roundoff error
hg=2675.4
hf=417.54
hi=2947.95
he=(hg*Xe)+(1-Xe)*hf
mprintf("he=%fkJ/kg\n",he)//ans vary due to roundoff error
Ws=20*10^3
m=-(Ws/(he-hi))
mprintf("m=%fkg/s",m)//ans vary due to roundoff error

