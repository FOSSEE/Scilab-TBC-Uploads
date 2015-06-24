clc
//initialisation of variables
k1= 2*10^6 //lb in/rad
k2= 3*10^6 //lb in/rad
T= 20000 //lb in
//CALCULATIONS
ke= k1+k2
angle= T*180/(ke*%pi)
//RESULTS
printf ('equivalent spring constant= %.2e lb in/rad',ke)
printf ('\n angle of twist at B=%.2f degrees',angle)
