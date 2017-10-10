clear
//
//given
n=500
v=250
rsh=80
ra=0.02
drop=1.5
//derived
ish=3.125 //ish=v/rsh
il=480    //il=w*1000/v
ia=483.125 //ia=il+ish
e=v+ra*ia+2*drop
il=80
ia=il-ish
eb=v-ra*ia-2*drop
n=(500*eb)/e //e is proportional to n
printf("\n n= %0.1f  rpm",n)
