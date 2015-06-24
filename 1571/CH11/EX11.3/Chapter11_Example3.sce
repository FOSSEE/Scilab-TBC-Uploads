clc
clear

//INPUT
i=1.18;//current in amperes
e=20;//potential difference across its ends in volts
j=4.2;//joules constant in joule/cal
a=2*10^4;//area of the slab in sq.cm
t=5;//thickness of the plate in cm
t1=12.5;//temperature at hot side in K
t2=0;//temperature at cold side in k

//CALCULATIONS
k=e*i*t/(j*a*(t1-t2));//thermal conductivity in cgs unit

//OUTPUT
mprintf('thermal conductivity of slab is %3.5f cgs unit',k)
