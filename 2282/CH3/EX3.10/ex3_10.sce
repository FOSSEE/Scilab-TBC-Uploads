// Example 3.9, page no-98
clear
clc

//IntelSat-VI location= 37 W
// IntelSat-VII location=74 E
theta=37+74      // angular separation between two satellites
D=42164          //circular equilateral geostationary orbit in km
k=cosd(theta)
//printf("%f\n",k)
k=-0.357952
d=sqrt(2*D^2*(1-k))

printf("Inter-satellite distance is %.2f km",d)
