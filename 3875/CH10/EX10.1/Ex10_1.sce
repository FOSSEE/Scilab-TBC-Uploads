clc;
clear;
T1=6000 //temperature of the sun in K
E1_by_E2=17000 //ratio of luminosity of sun to the star 

//calculation

T2=T1*E1_by_E2^(1/4)
mprintf("The temperature of the star is = %d K",T2)
//Answer varies due to round off error
