clc
//Intitalisation of variables
clear
c= 0.0156 //M
ec= 111.5 //ohm^-1 cm^2
ac= 99.9 //ohm^-1 cm^2
ac1= 426 //ohm^-1 cm^2
kw= 10^-14 
//CALCULATIONS
x= (ec-ac)/(ac1-ac)
kh= c*x^2/(1-x)
kb= kw/kh
//RESULTS
printf ('x = %.4f ',x)
printf ('\n Hydrolysis constant = %.2e ',kh)
printf ('\n Dissociation constant = %.1e ',kb)
