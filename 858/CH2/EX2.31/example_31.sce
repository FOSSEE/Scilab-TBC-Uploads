clc
clear 
printf("example 2.31 page number 84\n\n")

//to find relative saturation and dew point

vapor_pressure=8   //in kPa
volume_ethanol=0.05;

//basis 1kmol of mixture

partial_pressure=volume_ethanol*100;
relative_saturation=partial_pressure/vapor_pressure;
mole_ratio=volume_ethanol/(1-volume_ethanol);
printf("mole ratio = %f \nrelative saturation = %f",mole_ratio,relative_saturation*100)

//basis 1kmol saturated gas mixture at 100kPa
volume_vapor=(8/100)*100;
ethanol_vapor=volume_vapor/100;
air_vapor=1-ethanol_vapor;
saturation_ratio=ethanol_vapor/air_vapor;
percentage_saturation=mole_ratio/saturation_ratio;

printf("\n\npercentage saturation = %f",percentage_saturation)

//dew point
printf("\n\ncorresponding to partial pressure of 5kPa we get a dew point of 17.3 degree celcius")
