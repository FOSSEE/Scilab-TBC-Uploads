//Example 5.13, Page number 5.31

clc;clear;close

// variable declaration
alpha=1.85//unitless
lamda=1.3*10**-6 // in m
a=25*10**-6 // in m
N_a=0.21 // numerical aperture

// Calculations
V_n=((2*%pi**2)*a**2*N_a**2)/lamda**2 // V number
N_m=(alpha/(alpha+2))*V_n //unitless

printf("No.of modes = %.2f =155(approx)",N_m)
printf("\nTaking the two possible polarizations, Total No.of nodes = %.2f",(N_m*2))
