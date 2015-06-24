clc
//initialisation of variables
H= 450 //mm
h= 150 //mm
k1= 1e-2 //cm/sec
k2= 3e-3 //cm/sec
k3= 4.9e-4 //cm/sec
h1= 300 //mm
//calculations
Kv= H/(h*(1/k1+1/k2+1/k3))
i= h1/H
q= Kv*i*100*3600
//results
printf ('rate of water supply = % 2f cm/hr ',q)
