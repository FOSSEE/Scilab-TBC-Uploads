clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.7   Page 759 \n')// Example 12.7

// Spectral distribution of reflectivity
// Total, hemispherical absorptivity
// Nature of surface temperature change

T = 500			;//[K] temperature of surface
e = .8;
stfncnstt = 5.67*10^-8;		//[W/m^2.K^4] Stefan-Boltzmann constant

x=[0 6 8 16];
y=[.8 .8 0 0];
clf();
plot2d(x,y,style=5,rect=[0,0,20,1]);


xtitle("Spectral Distribution of reflectivity", "wavelength (micro-m)", "reflectivity");

//From equation 12.43 and 12.44
Gabs = {.2*500/2*(6-2)+500*[.2*(8-6)+(1-.2)*(8-6)/2]+1*500*(12-8)+500*(16-12)/2}            ;//[w/m^2]
G = {500*(6-2)/2+500*(12-6)+500*(16-12)/2}            ;//[w/m^2]
a = Gabs/G;

//Neglecting convection effects net het flux to the surface
qnet = a*G - e*stfncnstt*T^4;

printf('\n Total, hemispherical absorptivity %.2f \n Nature of surface temperature change = %i W/m^2 \n Since qnet > 0, the sirface temperature will increase with the time', a,qnet);