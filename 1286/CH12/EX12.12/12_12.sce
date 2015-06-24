clc
//initialisation
kcu=0.93//cal per sec per cm per c
t=700
//CALCULATIONS
khell=t*kcu
kmks=khell*100
ksi=4.2*khell
//results
printf(' \n conductivity= % 1f cal per sec per cm per c',khell)
printf(' \n conductivity= % 1f cal per sec per m per c',kmks)
printf(' \n conductivity= % 1f watt per m per k',ksi)
