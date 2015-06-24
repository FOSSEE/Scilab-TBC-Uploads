clc
//initialisation of variables
clear
a= -2.776
b= 0.947*10^-3
c= 0.295*10^-6
T1= 373 //K
T2= 298 //K
dH1= -57.8 //kcal
//CALCULATIONS
dH= a*(T1-T2)+0.5*b*(T1^2-T2^2)+0.33*c*(T1^3-T2^3)
dH2= dH1+(dH/1000)
//RESULTS
printf ('Heat obtained = %.f cal ',dH)
printf ('\n Stanadard heat of formation = %.2f kcal mole^-1',dH2)
