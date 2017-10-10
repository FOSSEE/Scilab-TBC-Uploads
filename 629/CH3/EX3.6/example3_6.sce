clear
clc
//Example 3.6 PRESSURE MEASUREMENT (U-TUBE MANOMETER)
p1=0; //[Pa]
h12=0.6; //deflection[m]
g_m=133000; //specific weight of mercury[N/m^3]
p2=p1+g_m*h12 //[Pa]
//From hydrostatic equation,as z3=z2
p3=p2; //[Pa]

//Pressure at the interface is constant, p3_mercury=p3_water=p3
l=1.8; //[m]
g_w=9810; //specific weight of water[N/m^3]
p4=(p3-g_w*l)/10^3 //[kPa](factor 1kPa/10^3Pa)
printf("\nThe gage pressure at the center of the pipe = %.1f kPa gage.\n",p4)