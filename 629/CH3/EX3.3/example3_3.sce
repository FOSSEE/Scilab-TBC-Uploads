clear
clc
//Example 3.3 PRESSURE IN TANK WITH TWO FLUIDS
//Hydrostatic equation(oil), p1/g_oil +z1=p2/g_oil +z2
p1=0; //[Pa]
z1=3; //[m]
z2=2.1; //[m]
g_oil=0.8*9810; //specific weight of oil[N/m^3]
p2=(p1+(z1-z2)*g_oil)/10^3//[kPa] (factor 1kPa/10^3Pa)

//At oil-water interface, p2_oil=p2_water
//Hydrostatic equation(water), p2/g_water +z2=p3/g_water +z3
z3=0; //[m]
g_water=9810; //specific weight of water[N/m^3]
p3=p2+(z2-z3)*g_water/10^3 //[kPa]
printf("\nThe gage pressure at the bottom of the tank = %.1f kPa gage.\n",p3)