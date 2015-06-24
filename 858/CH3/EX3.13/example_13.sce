clc
clear 
printf("example 3.13 page number 100\n\n")

//to find the volumetric flow rate and fraction of air passing through the cooler

//basis 60m3/h of conditioned air at 25 degree C and 60% RH

Hf = 0.012;
Hi = 0.033;
H1 = 0.0075;

water_vapor = Hf/18;   //in kmol of water vapor
dry_air = 1/28.9;  //in kmol
total_mass = water_vapor+dry_air;

volume = 22.4*(298/273)*total_mass;
weight = 60/volume;
printf("weight of dry air handled per hr = %f kg",weight)

//part 1
inlet_watervapor = 0.033/18;    //in kmol of water vapor
volume_inlet = 22.4*(308/273)*(inlet_watervapor+dry_air);
printf("\n\nvolumetric flow rate of inlet air = %f cubic meter",volume_inlet*weight)

//part 2
y = (Hf - Hi)/(H1 - Hi);
printf("\n\nfraction of inlet air passing through cooler = %f",y)
