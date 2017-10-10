clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 12.2   Page 734\n')// Example 12.2

// Total Irradiation
x=[0 5 20 25];
y=[0 1000 1000 0];
clf();
plot2d(x,y,style=5,rect=[0,0,30,1100]);
xtitle("Spectral Distribution", "wavelength (micro-m)", "G (W/m^2.micro-m)");

//By Equation 12.4
G = 1000*(5-0)/2+1000*(20-5)+1000*(25-20)/2;

printf("\n G = %i W/m^2",G);
//END



