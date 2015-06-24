clc 
//initialisation of variables
SR= 0.5 //V/us
Vcon= 12 //V
//CALCULATIONS
f= SR*1000/(2*%pi*Vcon)
//RESULTS
printf ('full power = %.2f kHz ',f)
