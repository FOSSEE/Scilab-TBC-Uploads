//Example number 8.1, Page number 8.16


clc;clear;close

// Variable declaration
N=6.023*10**26 // unitless
deltaHv=120 //unitless
B=1.38*10**-23 //unitless
k=6.023*10**23//unitless

// Calculations
n0=0                                          //  0 in denominator
n300=N*exp(-deltaHv*10**3/(k*B*300))     // The number of vacancies per kilomole of copper
n900=N*exp(-(deltaHv*10**3)/(k*B*900)) // The number of vacancies per kilomole of copper

// Results
printf("at 0K, The number of vacancies per kilomole of copper is : %.f",n0)
printf("\nat 300K, The number of vacancies per kilomole of copper is : %.3e",(n300))
printf("\nat 900K, The numbber of vacancies per kilomole of copper is : %.3e",(n900))
