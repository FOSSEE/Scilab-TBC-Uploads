//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 89
clear;
clc;

//Given Data

r=1.0;//Diode resistance in ohms
Rl=100;//Load resistance in ohms
Ep=30;//Input supply voltage in volts peak

//Solution

disp("(a)");
Ip=Ep/(Rl+r)*1000;//peak current in milli-amperes
Irms=Ip/sqrt(2);//rms current in milli-amperes
Iavg=Ip/%pi;//average or d.c. value of current in in milli-amperes

printf("The peak value of current = Ip=%d mA\n",Ip);
printf("The rms value of current = Irms=%.1f mA\n",Irms);
printf("The average or d.c. value of current = Iav=%.1f mA\n",Iavg);

disp("(b)");
Pdc=(Iavg/1000)^2*Rl//d.c. output power in watts

printf("The d.c. output power = Pdc=%.3f watts\n",Pdc);

disp("(c)");
Pac=(Irms/1000)^2*(Rl+r);//input ac power in watts

printf("The a.c. input power = Pin=%.2f watts\n",Pac);

disp("(d)");
n=Pdc/Pac;//Rectification efficiency is output dc power over input ac power

printf("Rectification efficiency= %d percentage",n*100);


//Error in textbook as Irms=Ip/sqrt(2) and not Ip/2
