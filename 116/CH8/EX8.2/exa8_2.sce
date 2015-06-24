  
//Caption:Program to determine the loss limit and the chromatic dispersion limit of a high performance SMF FOC
 
//Example 8.2
 
//Page 389
 
//Refer figure 8.2 on page 385
 
disp('The attenuation of single-mode fibre operating at 1300nm is approximately 0.35dB/km. Thus,')

Pin=42//input power = 42dB

A=0.35
 
LL=(Pin/A)//Loss Limit

disp('Using 250 Gbps-km as BDP of a silica single-mode fiber, the chromatic dispersion limit is determined as')

Cd=(250000/417)//Chromatic dispersion limit
 
//Result
 
//Loss Limit = 120 km
 
//Chromatic Dispersion Limit = 599.52 = 600 km
 