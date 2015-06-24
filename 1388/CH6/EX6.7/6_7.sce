clc
//initialisation of variables
T= 25 //C
H= 25.31 //cal
H1= -40.02 //cal
H2= -30.06 //cal
S1= 17.67 //cal deg^-1
S2= 13.17 //cal deg^-1
S3= -22.97 //cal deg^-1
R= 1.987 //cal/mol K
//CALCULATIONS
H3= (H+H1-H2)*1000
S4= S1+S2+S3
G= H3-(273.2+T)*S4
Ka= 10^(-G/(2.3*R*(273+T)))
//RESULTS
printf (' solubility product constant = %.1e ',Ka)
