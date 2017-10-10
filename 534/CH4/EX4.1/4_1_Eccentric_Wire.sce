clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 4.1   Page 211 \n'); //Example 4.1
// Thermal resistance of wire coating associated with peripheral variations in coating thickness

d = .005;        //[m] Diameter of wire
k = .35;         //[W/m.K] Thermal Conductivity
h = 15;          //[W/m^2.K] Total coeff with Convection n Radiation

rcr = k/h;        // [m] critical insulation radius
tcr = rcr - d/2;  // [m] critical insulation Thickness

Rtcond = 2.302*log10(rcr/(d/2))/(2*%pi*k);      //[K/W] Thermal resistance 

//Using Table 4.1 Case 7
z = .5*tcr;
D=2*rcr;
Rtcond2D = (acosh((D^2 + d^2 - 4*z^2)/(2*D*d)))/(2*%pi*k);

printf("\n\n The reduction in thermal resistance of the insulation is %.2f K/W ", Rtcond-Rtcond2D);
//END