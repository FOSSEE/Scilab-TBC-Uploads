clear
//
//case a slip
f=50
p=4
ns=(120*f)/p //synchronous speed
printf("\n %0.1f",ns)
n=1440
s=(1500-1440)/(1500)
printf("\n slip= %e pu",s)
//case b rotor resistance loss
pd=25 //power developed
ml=1 //mechanical losses
pm=pd+ml //The total mechanical power developed
pag=pm/(1-s)
rl=s*pag
printf("\n rotor resistance loss= %0.1f  kw",rl)
//case c the total input if stator losses are 1.75 kw
sl=1.75 //stator loss
ti=pag+sl
printf("\n total input= %0.1f kw",ti)
//case d efficiency
e=(pd*100)/ti
printf("\n %0.3f ",e)
//case e line current
pf=0.85 //power factor
e1=440
l=(ti*1000)/((3**0.5)*e1*pf)
printf("\n line current= %0.1f  A",l)
//case f
fr=s*f
n=fr*60
printf("\n The number of complete cycles of the rotor emf per minute is=  %0.0f  ",n)
