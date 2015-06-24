clc 
//initialisation of variables
i= 0.00521 //amp
A= 0.23 //cm^2
k= 0.0129 //ohm^-1 cm^-1
t= 67 //min
l= 4.64 //cm
//CALCULATIONS
r= i/(A*k)
uK= l/(t*60*r)
//RESULTS
printf ('electrical field strength= %.2f volts cm^-1',r)
printf ('\n mobility of potassium ion= %.1e cm^2 volt^-1 cm^-1',uK)
