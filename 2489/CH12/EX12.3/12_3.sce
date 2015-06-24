clc
//Intitalisation of variables
clear
pa= 114.9 //mm
pb= 238.3 //mm
xa= 0.525
xb= 0.475
//CALCULATIONS
xa1= xa*pa/((xa*pa)+(xb*pb))
xb1= 1-xa1
//RESULTS
printf ('Mole fraction CCl4 = %.3f ',xa1)
printf ('\n Mole fraction of SiCl4 = %.3f ',xb1)
