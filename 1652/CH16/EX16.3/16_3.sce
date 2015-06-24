clc
//Initialization of variables
t=242 //sec
P=229 //mm
P0=363 //mm
//calculations
k=(1/P -1/P0)/t
//results
printf("rate constant= %.2e sec^-1 mm^-1",k)
