clc
clear 
printf("example 2.5 page number 72\n\n")

//to find the carbon content in sample

w=4.73    //in gm5
VCO2=5.30    //in liters

weight_CO2=44/22.4*VCO2;
carbon_content=12/44*weight_CO2;

percentage_content=(carbon_content/w)*100;

printf("percentage amount of carbon in sample = %f",percentage_content)
