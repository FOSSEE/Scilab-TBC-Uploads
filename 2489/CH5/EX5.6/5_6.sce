clc
//Intitalisation of variables
clear
p= 770 //mm
T= 100.37 //C
p1= 1 //atm
c= 0.0001
T1= 100 //C
//CALCULATIONS
dt= c*(273+T1)*(760-p)
cbp= T+dt
//RESULTS
printf ('Change boiling point = %.2f C',dt)
printf ('\n Corrected boiling point = %.2f C',cbp)
