clc
//initialisation of variables
ds= 2 //in
n= 315 //rpm
G= 12*10^6
Lab= 5 //in
Lbc= 15 //in
Pa= 10 //hp
Pc= 40 //hp
Pb= 50 //hp
//CALCULATIONS
Tab= 63000*Pa/n
Tbc= 63000*Pc/n
angle= ((32*Tbc*Lbc*12/(%pi*ds^4*G))-(32*Tab*Lab*12/(%pi*ds^4*G)))*(180/%pi)
//RESULTS
printf ('angle of twist of gear C releative to a= %.2f degrees',angle)