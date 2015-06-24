clc
clear
printf("Example 12.13 | Page number 441 \n\n");
//Find adiabatic combustion temperature when methane is burnt
//Part(a) using average Cp values
//Part(b) using ideal gas enthalpy

//Part(a)
printf("Part(a)\n")
//Picking up various Cp values from Table 12.1
tB = (16*50010)/(44*0.842+2*18*1.86+3*32*0.922+22.56*28*1.042)+25
printf("Adiabatic combustion temperature (using average Cp values)= %.1f K\n\n",tB+273)

//Part(b)
printf("Part(b)\n")
tb1 = 1000 //K //first guess temperature
tb2 = 1200 //K second guess temperature
tb = (tb1 - tb2)/(637617-836847)*(800160-836847) + tb2
printf("Adiabatic combustion temperature (using ideal gas enthalpy)= %.1f K",tb)
