clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.4   Page 113 \n'); //Example 3.4
// Temperature Distribution And Heat rate

a = 0.25;
x1 = .05;      //[m] Distance of smaller end
x2 = .25;      //[m] Distance of larger end
T1 = 400;      //[K] Temperature of smaller end
T2 = 600;      //[K] Temperature of larger end
k = 3.46;    //[W/m.K] From Table A.2, Pyroceram at Temp 285K

x = linspace(0.05,.25,100);
T=(T1 + (T1-T2)*[(x^-1 - x1^-1)/(x1^-1 - x2^-1)]);
clf();
plot(x,T);
xtitle(" Temp vs distance x", "x (m)", "T (K)");

qx = %pi*a^2*k*(T1-T2)/(4*[1/x1 - 1/x2]);            //[W]
printf("\n\n Heat Transfer rate = %.2f W",qx);
//END