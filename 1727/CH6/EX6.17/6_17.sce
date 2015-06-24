clc
//Initialization of variables
lr=1/7200
//calculations
Tr=60/(12*3600)
yr=(lr/Tr)^2
//results
printf("vertical scale to be adopted is 1 in %d",1/yr)
