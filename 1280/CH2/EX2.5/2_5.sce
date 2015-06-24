clc
//initialisation of variables
Fi= 25 //lb
li= 12 //in
ni= 30
ti= 60 //sec
F0= 1000 //lb
Lo= 6 //in
to= 60 //sec
//CALCULATIONS
lhp= Fi*li*ni/(ti*6600)
Ohp= F0*Lo/(to*6600)
eo= Ohp*100/lhp
//RESULTS
printf ('overall efficiency = %.f percent',eo)
