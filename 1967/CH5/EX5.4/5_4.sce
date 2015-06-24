clc
//initialisation of variables
clear
H1= -29.6 //kcal
H2= -530.6 //kcal
H3= -94 //kcal
H4= -68.3 //kcal
//CALCULATIONS
dH1= -(H1+H2-3*H3-4*H4)
dH2= -dH1+3*H3+3*H4
//RESULTS
printf ('Heat of combustion = %.f kcal',dH1)
printf ('\n Standard heat of formation = %.1f kcal',dH2)
