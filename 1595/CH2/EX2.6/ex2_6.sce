// Amplitude Modulation-Transmission : example 2-6 : pg(81 & 82)
Ic=12;//antenna current of AM transmitter when unmodulated
It=13;//current when modulated
x=2*((13/12)^2-1);
m=sqrt(x);
a=m*100;
printf("\nIt = Ic.sqrt(1+(m^2)/2) \nm^2 = %.2f ",x);
printf("\nm = %.2f",m);
printf("\npercent(m) = %.f percent",a);//percentage of modulation
