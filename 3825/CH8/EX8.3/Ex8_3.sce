clc
hi=2947.95
si=7.0248
se=si
sg=7.3598
sf=1.3027
Xe=(se-sf)/(sg-sf)
mprintf("Xe=%g\n",Xe)//ans vary due to roundoff error
hg=2675.4
hf=417.54
he=(Xe*hg)+(1-Xe)*hf
mprintf("he=%fkJ/kg\n",he)//ans vary due to roundoff error
W=hi-he
mprintf("W=%fkJ/s",W)//ans vary due to roundoff error
