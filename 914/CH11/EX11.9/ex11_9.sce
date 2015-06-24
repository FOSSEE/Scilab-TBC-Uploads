clc;
warning("off");
printf("\n\n example11.9 - pg538");
// given
Ai=4.869;
wc=6000;
cp=1;
Rf=0.002;
Uclean=69.685;
Udirty=1/(Rf+(1/Uclean));
deltaT1=300-50;
deltaT2=deltaT1/(exp((Udirty*Ai)/(wc*cp)));
Th2=300;
Tc2=Th2-deltaT2;
printf("\n\n the outlet temperature is \n Tc2 = %f degF",Tc2);
