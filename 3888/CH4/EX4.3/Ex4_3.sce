//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 4.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


peak_dem_light=200;                                                              //Peak demand of the light load in kW
max_dem_light=200;                                                               //Maximum demand of the light load in kW
max_dem_rest=1800;                                                               //Maximum demand of the rest load in kW
peak_dem_rest=1800;                                                              //Peak demand of the rest load in kW
c_light=peak_dem_light/max_dem_light;                                            //Contribution factor for street lighting load 
c_rest=peak_dem_rest/max_dem_rest;                                               //Contribution factor for street rest load 
DF=(peak_dem_light+peak_dem_rest)/(c_light*max_dem_light+c_rest*max_dem_rest);   //Diversity factor of the feeder
CF=1/DF;                                                                         //Coincidence factor of the load group

printf("\nClass contribution factor for street lightning is %.1f and the remaining load is %.1f",c_light,c_rest);
printf("\nDiversity factor of the feeder %.1f",DF);
printf("\nCoincidence factor of the load group %.1f",CF);
