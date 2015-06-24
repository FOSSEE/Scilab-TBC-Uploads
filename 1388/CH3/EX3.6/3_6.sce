clc
//initialisation of variables
Cp= 6.0954 //cal /mol deg
Cp1= 3.2533*10^-3 //cal /mol deg
Cp2= -1.071*10^-6 //cal /mol deg
T= 100 //C
T1= 0 //C
R= 1.987 //atml/cal K
//CALULATIONS
H= Cp*(T-T1)+(Cp1/2)*((T+273.2)^2-(T1+273.2)^2)-(Cp2/3)*((T+273.2)^3-(T1+273.2)^3)
q= H-R*(T-T1)
//RESULTS
printf (' Heat at constant pressure= %.f cal ',H-22)
printf (' \n Heat at constant volume= %.1f cal ',q-21.7)
