clc
//Initialization of variables
P1=69.2 //mm
P2=39.8//mm
t=20 //min
//calculations
k=2.303*log10(P1/P2) /(t*60)
//results
printf("Rate constant = %.2e sec^-1",k)
