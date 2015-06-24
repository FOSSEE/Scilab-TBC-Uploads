clc
//initialisation of variables
k1= 6*10^6 //lb in/rad
k2= 3*10^6 //lb in/rad
k3= 2*10^6 //lb in/rad
T= 10000 //lb in
//CALCULATIONS
ke= 1/((1/k1)+(1/k2)+(1/k3))
angle= T*180/(ke*%pi)
//RESULTS
printf ('equivalent spring constant= %.2e lb in/rad',ke)
printf ('\n angle of twist d/a=%.2f degrees',angle)
