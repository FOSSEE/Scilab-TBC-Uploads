clear
//
vs=12
rs=0.3
il=10
//case a
p=vs*il
printf("\n power= %0.1f  W",p)
//case b
power=il**2*rs
printf("\n power dissipated= %0.1f  W",power)
//case c
totpow=(vs-il*rs)*il
printf("\n total power supplied by practical source is= %0.1f  W",totpow)
i=vs/rs
printf("\n current source= %0.1f  A",i)
