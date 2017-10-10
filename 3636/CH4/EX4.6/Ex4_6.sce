clc;
clear;
l=1.8 //distance between plates in cm
E=3/2 //in V
t=0.6*10^-3 //time taken by the pulse in s 
del_t=236*10^-6 //pulse width in s

//Calculation
vd=l/t //in cm/s
myu_p=vd/E
Dp=(del_t*l)^2/(16*t^3)

mprintf("1)\nHole mobility= %i cm^2/Vs\n",myu_p)
mprintf("2)\nDiffusion coefficient= %2.2f cm^2/s",Dp)
