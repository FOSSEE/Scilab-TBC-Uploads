//Given that
density_water = 998  //in kg/m^3
l = 135*10^-3  //in meter
d = 12.3*10^-3  //in meter
g = 9.8  //in m/s^2

//Sample Problem 15-3
printf("**Sample Problem 15-3**\n")
d_oil = density_water*g*l/(g*(l+d))  //pressure at same height should be same
printf("The density of the oil is %fkg/m^3", d_oil)