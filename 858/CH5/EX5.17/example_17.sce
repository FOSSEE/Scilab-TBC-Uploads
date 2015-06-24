clc
clear 
printf("example 5.17 page number 209\n\n")

//to find the change in heat trnasfer area

Hv=2635.3    //kJ/kg
hL=313.93    //in kJ/kg
S=(2500*313.93+2500*2635.3-5000*125.79)/(2691.5-461.30);
printf("steam flow rate = %f kg steam/hr",S)

q = S*(2691.5 - 461.30);
q = q*1000/3600    //in W
U = 2833.13;   //in W/m2 K
delta_T = 383.2-348.2;   //in K
A = q/(U*delta_T);

printf("\n\nArea = %f sq meter",A)
printf("\n\nin this case a condensor and vaccum pump should be used")
