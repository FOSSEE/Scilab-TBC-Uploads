clear
//
//shunt field current
ish=400/220 //from circuit diagram
//armature current
i=50
ia=i+ish
printf("\n armature current= %0.1f  A",ia)
//armature voltage
voldrop=3
ra=0.04
rs=0.02
v=400
e=v+ia*(ra+rs)+voldrop
printf("\n armature voltage= %0.1f  V",e)
