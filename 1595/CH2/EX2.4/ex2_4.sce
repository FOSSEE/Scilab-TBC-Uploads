// Amplitude Modulation-Transmission : example 2-4 : pg(81)
m=0.9; //modulation index
Pc=500; //carrier Power 
x=(m^2)/2;
y=(1+x)*Pc;
printf("\nPt = Pc*(1+(m^2)/2)");
printf("\nPt = %.1f W",y);//total transmitted powwer
