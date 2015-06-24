clc
clear 
printf("example 2.30 page number 83\n\n")

//to find the mixture composition

vapor_pressure=8    //in kPa
pressure=100       //in kPa

//part 1
volume=1     //in m3
volume_ethanol=volume*(vapor_pressure/pressure);
volume_air=1-volume_ethanol;
printf("volumetric composition:- \nair composition = %f\n ethanol compostion = %f",volume_air*100,volume_ethanol*100)

//part 2
molar_mass_ethanol=46;
molar_mass_air=28.9;
mass_ethanol=0.08*molar_mass_ethanol;    //in kg
mass_air=0.92*molar_mass_air;     //in kg
fraction_ethanol=(mass_ethanol*100)/(mass_air+mass_ethanol);
fraction_air=(mass_air*100)/(mass_air+mass_ethanol);
printf("\n\ncomposition by weight:-\nAir = %f Ethanol vapor = %f",fraction_air,fraction_ethanol)

//part 3
mixture_volume=22.3*(101.3/100)*(299/273);   //in m3
weight_ethanol=mass_ethanol/mixture_volume;
printf("\n\nweight of ethanol/cubic meter = %f Kg",weight_ethanol)

//part 4
w_ethanol=mass_ethanol/mass_air;
printf("\n\nweight of ethanol/kg vapor free air = %f Kg",w_ethanol)

//part 5
moles_ethanol=0.08/0.92;
printf("\n\nkmol of ethanol per kmol of vapor free air = %f",moles_ethanol)
