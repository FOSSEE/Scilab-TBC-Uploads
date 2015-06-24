clc();
clear;

// To find the tempearure and heat low in case of sudden heat change

t = 10;              // time elapsed in hr
Ti= 70;              // tempearature of wall initially in degF
Ts = 1500;           // temperature of surface when suddenly changed in degF
a = 0.03;            // thermal diffusivity in ft^2/hr
k = 0.5;             // thermal conductivity in Btu/hr-ft-degF
A = 10;              // area of wall in sq ft
x = 7/12;            // distance from surface where tempearture is to be found in ft
f = x/(2*sqrt(a*t)); 
// From gaussian error function table erf can be found
errorf = 0.55;       // Referred from table

T = Ts+(Ti-Ts)*errorf;
printf("Temperaure at a distance of 7/12ft from surface is %.1f degF \n",T);
q = -k*A*(Ti-Ts)*exp(-x^2/(4*a*t))/sqrt(t*%pi*a);   // heat flow rate at a distance
qtot = -k*A*(Ti-Ts)*2*sqrt(t/(%pi*a));              // total heat flowing after 10 hrs in Btu
printf(" Heat flowing at a distance of 7/12 ft from surface is %d Btu/hr\n",q); 
printf(" Total heat flow after 10hrs is %f Btu",%pi);

