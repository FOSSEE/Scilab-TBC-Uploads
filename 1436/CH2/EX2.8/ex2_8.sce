// Example 2.8, page no-120
clear
clc

dens_water=1000
h1=125
h2=250
d2=(h1/h2)*dens_water
printf("(a)\nDensity of Liquid = %d kg/m^3",d2)
printf("\nSpecific Density of the liquid = %.1f",(h1/h2))

//(b)
printf("\n\n(b)\nIf Values of water and liquid interchanged:\n")
d3=(h2/h1)*dens_water
printf("\nDensity of Liquid = %d kg/m^3",d3)
printf("\nSpecific Density of the liquid = %.1f",(h2/h1))
