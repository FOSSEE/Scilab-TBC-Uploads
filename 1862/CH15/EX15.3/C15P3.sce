clear
clc
//to find fraction of total volume of iceberg is exposed

// GIVEN:
//density of water
rho_w = 1024//in Kg/m^3
//density of ice
rho_i = 917//in Kg/m^3

// SOLUTION:
//applying Archimedes' principle
//ratio of volume of water displaced to volume of submerged portion of ice
Vw_by_Vi = (rho_i/rho_w)*100//in percent
//percent of iceberg exposed
V = 100-(Vw_by_Vi)//in percent

printf ("\n\n Ratio of volume of water displaced to volume of submerged portion of ice Vw_by_Vi = \n\n %.1f percent",Vw_by_Vi)
printf ("\n\n Percent of iceberg exposed  = \n\n %.1f percent",V)
