clc;
warning("off");
printf("\n\n example11.7 - pg536");
// given
di=0.620;  //[inch] - internal diameter
d0=0.750;  //[inch] - outer diameter
Ai=0.1623;  //[ft^2/ft]
Ao=0.1963;  //[ft^2/ft]
wc=12*(471.3/0.9425);
cp=1;  //[Btu/lbm*degF] - heat capacity of water
Tco=110;
Tci=50;
qtotal=wc*cp*(Tco-Tci);
deltaH_coldwater=3.6*10^5;
deltaH_vapourization=1179.7-269.59;
wh=deltaH_coldwater/deltaH_vapourization;
hi=80;  //[Btu/h*ft^2*degF]
ho=500;  //[Btu/h*ft^2*degF]
km=26;  //[Btu/h*ft*degF]
Ui=1/((1/hi)+((Ai*log(d0/di))/(2*%pi*km))+(Ai/(Ao*ho)));
disp(Ui)
deltaT1=300-50;
deltaT2=300-110;
LMTD=(deltaT1-deltaT2)/(log(deltaT1/deltaT2));
A=qtotal/(Ui*LMTD);
L=A/Ai;
printf("\n\n the length of the heat exchanger is \n L = %f ft",L);

