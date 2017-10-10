clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.10   Page 156 \n'); //Example 3.10
// Study of motorcycle finned cylinder

H = .15;   //[m] height
k = 186;    //[W/m.K] alumunium at 400K
h = 50;      //[W/m^2.K] Heat convection coefficient
Tsurr = 300;    //[K] Temperature of surrounding air
To = 500;    //[K] Temp inside

//Dimensions of Fin
N = 5;
t = .006;    //[m] Thickness
L = .020;     //[m] Length
r2c = .048;        //[m]
r1 = .025;           //[m]

Af = 2*%pi*(r2c^2-r1^2);
At = N*Af + 2*%pi*r1*(H-N*t);

//Using fig 3.19 
nf = .95;

qt = h*At*[1-N*Af*(1-nf)/At]*(To-Tsurr);
qwo = h*(2*%pi*r1*H)*(To-Tsurr);

printf("\n\n  Heat Transfer Rate with the fins =%i W \n  Heat Transfer Rate without the fins =%i W \n Thus Increase in Heat transfer rate of %i W is observed with fins",qt,qwo,qt-qwo);
//END