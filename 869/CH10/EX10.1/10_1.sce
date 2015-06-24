clc
//initialisation of variables
L= 50 //ft
Do= 2 //in
Di= 1.5 //in
Mt= 10000 //lb in
G= 12*10^6
//CALCULATIONS
Tmax= 16*Mt*Do/(%pi*(Do^4-Di^4))
angle= (Mt*L*12*32)*57.3/(G*%pi*(Do^4-Di^4))
//RESULTS
printf ('Maximum shearing strees= %.2f psi',Tmax)
printf (' \n twist angle=%.2f degrees',angle)
