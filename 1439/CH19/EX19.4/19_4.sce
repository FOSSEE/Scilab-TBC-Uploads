clc 
//initialisation of variables
No= 0.979889 
v= 2989.74 //cm^-1
rc= 1.2746 //A
T= 25 //C
E1= 6.8635 //cal deg^-1 mole^-1
E2= 11.4392 //cal deg^-1 mole^-1
E3= 7.2820 //cal deg^-1 mole^-1
E4= 4.5757 //cal deg^-1 mole^-1
E5= 2.7676 //cal deg^-1 mole^-1
r1= 0.265 //A
r= 35.99 //A
//CALCULATIONS
Et= E1*log10(r)+E2*log10(273.15+T)- E3
Ei= E4*log10(r1)+E4*log10(273.15+T)-E5
//RESULTS
printf ('Transitional energy = %.1f cal deg^-1 mole^-1',Et)
printf ('\n rorational energy = %.1f cal deg^-1 mole^-1',Ei)
