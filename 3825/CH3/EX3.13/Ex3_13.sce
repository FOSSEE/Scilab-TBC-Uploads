clc
P1=30 //pressure in bar
P2=35 //pressure in bar
P3=32 //pressure in bar
vg1=0.06663 //at P1
vg2=0.05703 //at P2
hg1=2802.3 //at P1
hg2=2802 //at P2
vg=vg1+((vg2-vg1)*(P3-P1)/(P2-P1))
hg=hg1+((hg2-hg1)*(P3-P1)/(P2-P1))
mprintf("vg=%f metre-cube/kg\n",vg)
mprintf("hg=%f kJ/kg\n",hg)
