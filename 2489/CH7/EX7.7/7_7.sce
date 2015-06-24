clc
//Intitalisation of variables
clear
cp= 18 //cal/deg
co2= 6.97 //cal/deg
ch2= 6.89 //cal/deg
T1= 25 //C
T2= 100 //C
dH1= -68.4 //kcal
//CALCULATIONS
dCp= (cp-(co2*0.5+ch2))*10^-3
dH2= dH1+(T2-T1)*dCp
//RESULTS
printf ('dCp = %.2e kcal deg^-1',dCp)
printf ('\n Heat of formation = %.1f kcal',dH2) 
