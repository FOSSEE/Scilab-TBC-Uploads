  
//Caption:Program to determine the loss limit and the multimode dispersion limit of a graded index FOC
 
//Example 8.1

//Page 388

//Refer to figure 8.2 on page 385

Pin=42//input power = 42dB

disp('The attenuation of a multimode fiber operating at 820nm is approximately 3db/km. Thus,')

A=3//attenuation

LL=(Pin/A)//Loss Limit

disp('Using 2 Gbps-km as typical BDP of graded index multimode fiber, the multimode dispersion distance is determined as')
 
Dl=(2000/90)//Dispersion limit  
 
//Result
 
//Loss Limit = 14 km
 
//Dispersion Limit = 22.2 km
 