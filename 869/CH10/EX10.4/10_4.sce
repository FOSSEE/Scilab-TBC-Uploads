clc
//initialisation of variables
T= 10000 //lb in
G= 12*10^6
Dab= 1.5 //in
Lab= 4 //in
Dcd= 1 //in
Lcd= 3 //in
//CALCULATIONS
F= T/2
Tab= F*Lab
angle= ((T*32*12*Lcd/(G*%pi*Dcd^4))+2*(Tab*32*12*Lab/(G*%pi*Dab^4)))*(180/%pi)
//RESULTS
printf ('angle of twist= %.2f degrees',angle)
