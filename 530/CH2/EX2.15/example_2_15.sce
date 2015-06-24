clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.1
// Page 74
printf("Example 2.15, Page 74 \n\n")


// Find Decrease in thermal Resistance
// Find Increase in heat transfer rate

h = 15 ;        //[W/m^2.K]
k = 300;        //[W/m.K]
T = 200;         //[C]
Tsurr = 30;      //[C]
d = .01;        //[m]
L = .1;          //[m]
A = .5*.5        //[m^2]
n = 100          //Number of Pins

Bi = h*d/2/k;        //Biot Number
//Value of Biot Number is much less than .1
//Thus using equation 2.8.6
mL = (h*4/k/d)^.5*L;
zi = tanh(mL)/mL;
Res1 = 1/h/A;        // Thermal resistance without fins, [K/W]
Res2 = 1/(h*(A - n*%pi/4*d^2 + zi*(n*%pi*d*L)));// Thermal resistance with fins,[K/W]  

delRes = Res1-Res2;                         //[K/W]
// Increase in heat transfer rate
q = (T-Tsurr)/Res2 - (T-Tsurr)/Res1;        //[W]

printf("\n\n Decrease in thermal resistane at surface %.4f K/W.\n Increase in heat transfer rate %.1f W",delRes,q)
//END