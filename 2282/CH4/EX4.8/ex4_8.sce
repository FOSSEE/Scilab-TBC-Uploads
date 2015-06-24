// Example 4.8, page no-153
clear
clc

la=0.5      //length efficiency in azimuth direction
le=0.7      //length efficiency in elevation direction 
A=10        // Actual projected area of an antenna

Ae=la*le
Aee=Ae*A
printf("Aperture efficiency = %.2f \n Effective Aperture = %.1f m^2",Ae,Aee)
