clc
//Example 13.8
disp('Given')
disp('Vin=50V Zg=100 ohm')
Vin=50;Zg=100;
//From figure 13.32
disp('When the secondary circuit and ideal transformer is replaced by a Thevenin equivalent then the primary circuit sees a 100 ohm impedance')
//The turns ratio is a
a=10;
disp('We place the secondary circuit and ideal transformer by a Thevenin equivalent circuit')
Vth=-a*Vin
Zth=(-a)^2*Zg
printf("The secondary circuit has voltage source %d V rms with %d kohm resistance in series with it along with %d kohm load resistance",Vth,Zth*10^-3,10)