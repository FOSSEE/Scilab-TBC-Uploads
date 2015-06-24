//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 92 and 93
clear;
clc;

//Given Data

Rl=1500;//Load resistance in ohms
Rf=10;//Diodes dynamic resistance in ohms
esp=110*sqrt(2);//Input signal voltage magnitude in volts peak
esf=314/(2*%pi);//Input signal frequncy in hertz

//Solution

disp("(a)");
Ip=esp/(Rl+2*Rf)*1000;//peak output current in milli-ampere
I0av=2*Ip/%pi;//average value of output current in milli-ampere
E0av=I0av*Rl/1000;//DC load voltage in volts

printf("DC load voltage (E0)dc = %.2f Volts",E0av);

disp("(b)");
I0rms=Ip/sqrt(2);//rms output current in milli-ampere
Vr=sqrt((I0rms/1000)^2-(I0av/1000)^2)*Rl;//output ripple voltage in volts

printf("Output ripple voltage Vr = %.1f Volts",Vr);

disp("(c)");
pr=2*Rf/Rl*100;//Percentage Regulation of voltage

printf("The percentage regulation is = %.2f percentage",pr);

//Error in textbook in calculation of average current
