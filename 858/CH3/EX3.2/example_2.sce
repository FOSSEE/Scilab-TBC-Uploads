clc
clear 
printf("example 3.2 page number 91\n\n")

//to find amount of ammonia and air consumed

NH3_required = (17/63)*1000;    //NH3 required for 1 ton of nitric acid
NO_consumption = 0.96;
HNO3_consumption = 0.92;
NH3_consumed = NH3_required/(NO_consumption*HNO3_consumption);
volume_NH3 = NH3_consumed*(22.4/17);
printf("volume of ammonia consumed= %f cubic metre/h",volume_NH3)

NH3_content = 11   //% by volume
air_consumption = volume_NH3*((100-11)/11);
printf("\n\nvolume of air consumed = %f cubic metre/h",air_consumption)
