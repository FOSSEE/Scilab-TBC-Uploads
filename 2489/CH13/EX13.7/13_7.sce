clc
//Intitalisation of variables
clear
A1= 426.16 //ohms^-1 cm^2
A2= 91 //ohms^-1 cm^2
A3= 126.45 //ohms^-1 cm^2
a1= 61.92 //ohms^-1 cm^2
a2= 76.34 //ohms^-1 cm^2
a3= 63.64 //ohms^-1 cm^2
a4= 79.8 //ohms^-1 cm^2
//CALCULATIONS
A4= A1+A2-A3
A5= a1+a2
A6= a3+a4
//RESULTS
printf ('Conductance of CH3COOH = %.1f ohms^-1 cm^2',A4) 
printf ('\n Conductance of AgCl = %.1f ohms^-1 cm^2',A5) 
printf ('\n Conductance of BaSO4 = %.1f ohms^-1 cm^2',A6) 
