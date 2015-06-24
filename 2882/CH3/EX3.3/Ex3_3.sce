//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 89
clear;
clc;

//Given Data

Rl=470;//Load resistance in ohms
r=2;//Diodes dynamic resistance in ohms
esp=50;//Input signal voltage magnitude in volts peak
esf=314/(2*%pi);//Input signal frequncy in hertz

//Solution

disp("(a)");
Ep=esp*sqrt(2);//peak voltage in volts
Ip=Ep/(Rl+r)*1000;//peak current in amperes

printf("The peak value of current = Ip=%.1f mA\n",Ip*1000);

disp("(b)");
Iavg=2*Ip/%pi;//average or d.c. value of current in in milli-amperes

printf("The average or d.c. value of current = Iav=%.2f mA\n",Iavg);

disp("(c)");
Irms=Ip/sqrt(2);//rms current in milli-amperes

printf("The rms value of current = Irms=%.2f mA\n",Irms);

disp("(d)");
RF=sqrt((Irms/Iavg)^2-1);//ripple factor

printf("The ripple factor = RF=%.4f\n",RF);

disp("(e)");
Pdc=(Iavg/1000)^2*Rl//d.c. output power in watts
Pac=(Irms/1000)^2*(Rl+r);//input ac power in watts
n=Pdc/Pac;//Rectification efficiency is output dc power over input ac power

printf("Rectification efficiency= %.2f percentage",n*100);

//Efficiency calculation error in textbook and also decimal errors due to approximations
