clc
//initialisation of variables
clear
psif= 10.2 //lbf/in^2
usit= 3.8*10^-7 //lbf sec/ft^2
usif= 3.52*10^-7 //lbf sec/ft^2
Tsit= 530 //R
Tsif= 480 //R
wf= 15000 //rev/min
//CALCULATIONS
Psit= psif*usit*sqrt(Tsit/Tsif)/usif
wt= wf*sqrt(Tsit/Tsif)
//RESULTS
printf ('Pressure in the test cell = %.1f lbf/in^2',Psit) 
printf ('\n Compressor speed = %.f rev.min',wt) 
