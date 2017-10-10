//Example 4.20
clear;
clc;

//Given
SoC2H5OH=160.7;//So for ethanol
SoC=5.7;//So for graphite
SoH2=130.6;//So for hydrogen
SoO2=205.1;//So for oxygen

//To determine the standard entropy of formation of ethanol
delSo=SoC2H5OH-((2*SoC)+(3*SoH2)+(0.5*SoO2));//standard entropy of formation of ethanol in J K^-1 mol^-1
mprintf('Standard entropy of formation of ethanol = %f J K^-1 mol^-1',delSo);
//end