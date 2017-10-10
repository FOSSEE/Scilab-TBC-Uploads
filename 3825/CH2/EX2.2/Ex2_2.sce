clc
v2=60 //speed of gladiator in km/h
v2=(v2*10^3)/3600 //speed of gladiator in metre/second
mprintf("v2=%fm/s\n",v2)//ans may vary due to roundoff error
v1=0 //initial speed of gladiator
m=150 //mass of gladiator in kg
W=m*((v2*v2)-(v1*v1))/2 //work done on gladiator 
mprintf("W=%fkJ\n",W/1000)//ans varies due to roundoff error
vf=10 //final velocity of gladiator in km/h
vf=(10*10^3)/3600 //final velocity in m/s
mprintf("vf=%fm/s\n",vf)//ans may vary due to roundoff error
vi=v2
deltaKE=m*((vf*vf)-(vi*vi))/2 //change in kinetic energy
mprintf("Δ(KE)=%fkJ",deltaKE/1000)//ans varies due to roundoff error

