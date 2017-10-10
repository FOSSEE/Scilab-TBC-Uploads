clear
clc
//Example 4.13 PRESSURE DIFFERENCE IN TORNADO
//1mi=5280ft, 1hr=3600s
V=150*5280/3600 //[ft/s]
//1slug=32.2lbm
rho=0.075/32.2 //density[slug/ft^3]
//Pressure difference, p1-p0=-rho*V^2
//29.92 in Hg=2116 psf
delp=-rho*V^2*(29.92/2116) //inches of Hg
printf("\nThe pressure difference between center and outer edge of mercury = %.2f in Hg.\n",delp)