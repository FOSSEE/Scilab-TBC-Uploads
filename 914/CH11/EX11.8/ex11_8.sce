clc;
warning("off");
printf("\n\n example11.8 - pg537");
// given
L=30;  //[ft] - length
Ai=0.1623*L;
di=0.620;  //[inch] - internal diameter
d0=0.750;  //[inch] - outer diameter
Ao=0.1963*L;  //[ft^2/ft]
wc=12*(471.3/0.9425);
cp=1;  //[Btu/lbm*degF] - heat capacity of water
deltaH_coldwater=3.6*10^5;
deltaH_vapourization=1179.7-269.59;
wh=deltaH_coldwater/deltaH_vapourization;
hi=80;  //[Btu/h*ft^2*degF]
ho=500;  //[Btu/h*ft^2*degF]
km=26;  //[Btu/h*ft*degF]
Ui=1/((1/hi)+(((Ai/L)*log(d0/di))/(2*%pi*km))+(Ai/(Ao*ho)));
deltaT1=300-50;
deltaT=deltaT1/(exp((Ui*Ai)/(wc*cp)));
Tsat=300;
Tc2=Tsat-deltaT;
printf("\n\n Therefore, the outlet temperature of the cold fluid is \n Tc2 = %f degF",Tc2);
