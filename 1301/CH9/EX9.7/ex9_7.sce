clc;
Q=200;   //heat in Btu(British Thermal Unit)
m=50;    //mass in lb
c=0.5;   //specific heat capacity inBtu/lb.F
delT=Q/(m*c);  //calculating change in temperatur using Q=mc(del T)
disp(delT,"Change in Temperature in Farenheit = ");  //displaying result.
disp(25-delT,"Final Temperature in Farenheit = ");   //displaying result.