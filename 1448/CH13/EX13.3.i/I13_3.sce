clc
//Initialization of variables
dr=1 //pm
r=52.9 //pm
//calculations
Probability=4*%e^(-2) *dr/r
//results
printf("About 1 inspection in %d",1/Probability +3)
