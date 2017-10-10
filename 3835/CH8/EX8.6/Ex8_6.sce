clear
//
//case a slip
f=50
p=6
ns=(120*f)/p
//rotor frequency fr=120/60=2 Hz
fr=2
//s=fr/f=2/50=0.04
s=0.04
printf("\n synchrous speed=0.04pu")
//case b rotor speed
N=(1-s)*ns
printf("\n rotor speed= %0.0f  rpm",N)
//case c mechanical power developed 
//pag=5/3=25Kw
pag=25
pm=3*pag*(1-s)
printf("\n mechanical power developed= %0.0f  KW",pm)
//case d the rotor resistance loss per phase
r=s*pag
printf("\n r= %0.0f  KW",r)
//case e rotor resistance per phase if rotor current is 60A
//i2 and r2 are rotor current and resistance respectively
//i2**2*r2=1000
//r2=1000/(60*60)
r2=0.277777
printf("\n r2= %0.1f  Ohm",r2)
