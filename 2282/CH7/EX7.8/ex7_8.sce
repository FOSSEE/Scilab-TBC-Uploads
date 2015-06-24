// Example 7.8, page no-273
clear
clc

Ta=50          //Antenna Noise temperature
Tf=300         //Thermodynamic temperature of the feeder
Te=50          // Effecitve input noise temperatuire

//(a)
Lf=1
T=(Ta/Lf)+(Tf*(Lf-1)/Lf)+Te
printf("(a)\n System noise temperature = %.0fK",T)

//(b)
Lf=1.413
T=(Ta/Lf)+(Tf*(Lf-1)/Lf)+Te
printf("\n\n (b)\n System noise temperature = %.3fK",ceil(T*10^3)/10^3)
