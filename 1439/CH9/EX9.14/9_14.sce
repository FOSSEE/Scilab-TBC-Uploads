clc 
//initialisation of variables
dH= -17.889 //cal deg^-1
T= 25 //C
dS= -19.28 //cal deg^-1
R= 1.987 //cal mole^-1 deg^-1
//CALCULATIONS
dG= dH-dS*(273.1+T)
Kp= 10^(dG/(-R*(273.1+T)*2.303))
///RESULTS
printf ('Kp= %.1e  ',Kp)


//ANSWER IN THE TEXTBOOK IS WRONG
