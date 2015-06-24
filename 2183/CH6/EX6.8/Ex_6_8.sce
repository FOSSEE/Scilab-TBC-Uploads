// Example 6.8 //find output power and bandwidth
clc;
clear;
close;
Pdc=320*10^-6;//d.c. power in Watt
f1=20*10^6;//frequency in hertz
Ti=5*10^-9;//recombination life time in nano second
Pe1=(Pdc/sqrt(1+(2*%pi*f1*Ti)^2))*10^6;
f2=100*10^6;//frequency in hertz
Pe2=(Pdc/sqrt(1+(2*%pi*f2*Ti)^2))*10^6;
f=((sqrt(3))/(2*%pi*Ti));//in MHz
fele=f*0.707;//
disp(Pe1,"overall power in micro Watt when frequecy is 20 MHz")
disp(Pe2,"overall power in micro Watt when frequecy is 80 MHz")
disp(f*10^-6,"optical bandwidth in MHz is")
disp(round(fele*10^-6),"electrical bandwidth in MHz is")
