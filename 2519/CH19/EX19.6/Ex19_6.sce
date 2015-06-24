clc
clear
//Initialization of variables
r1=1 //in
r2=5 //in
F12=1
//calculations
F21=4*%pi*r1^2 *F12/(4*%pi*r2^2)
F22=1-F21
//results
printf("Percent of radiation emitted by surface 2 on small sphere = %d percent",F21*100)
printf("\n Remaining %d percent is absorbed by inner surface of larger sphere",F22*100)
