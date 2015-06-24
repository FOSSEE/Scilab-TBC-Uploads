//Given that
R = 12.0  //in meter
m = 196  //in kg
density_He = 0.160  //in kg/m^3
density_air = 1.25  //in kg/m^3
g = 9.8  //in m/s^2

//Sample Problem 15-5
printf("**Sample Problem 15-5**\n")
Vb = 4/3*%pi*R^3
PayLoad = (density_air*Vb*g - (density_He*Vb*g + m*g))/g
printf("The maximum mass attached can be %fkg", PayLoad)