clear
//
//given
zs=4 // at angle 84.26
xs=3.98
impangle=84.26
//case a
//vt=2200+j0
//ia=120
//e=vt+ia*zs
//on substituting and calculating we get the value of e as 2298.17 at 12 degrees
p=((2298.17-2200)/2200)*100
printf("\n %0.3f ",p)
//case b
//performing same functions as above for pf leading 0.8 we get e=1994.63 at 12 degrees
p=((1994.63-2200)/2200)*100
printf("\n %0.3f ",p)
//case c
//same as above but pf lags by 0.707 and on calculating generates e as 2589.53
p=((2589.53-2200)/2200)*100
printf("\n %0.3f ",p)
