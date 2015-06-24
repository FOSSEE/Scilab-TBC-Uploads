clc;
warning("off");
printf("\n\n example11.10 - pg544");
// given
Ui=325;  //[W/m^2*K] - overall heat transfer coefficient
Thi=120;  //[degC] - inlet temperature of hydrocarbon
Tho=65;  //[degC] - outlet temperature of hydrocarbon
Tci=15;  //[degC] - inlet temperature of water
Tco=50;  //[degC] - outlet temperture of water
cp=4184;  //[J/kg*K] - heat capacity of water
ch=4184*0.45;  //[J/kg*K] - heat capacity of hydrocarbon
wc=1.2;  //[kg/sec] - mass flow rate of water
wh=((wc*cp)*(Tco-Tci))/((ch)*(Thi-Tho));
qtotal=wc*cp*(Tco-Tci);
// (a) - parallel double pipe
F=1;
Thi=120;  //[degC] - inlet temperature of hydrocarbon
Tho=65;  //[degC] - outlet temperature of hydrocarbon
Tci=15;  //[degC] - inlet temperature of water
Tco=50;  //[degC] - outlet temperture of water
deltaT1=Thi-Tci;
deltaT2=Tho-Tco;
LMTD=(deltaT2-deltaT1)/(log(deltaT2/deltaT1));
Ai=qtotal/((Ui*LMTD));
printf("\n\n (a) parallel double pipe \n Ai = %f m^2",Ai);
// (b) - counter flow
F=1;
Thi=120;  //[degC] - inlet temperature of hydrocarbon
Tho=65;  //[degC] - outlet temperature of hydrocarbon
Tco=15;  //[degC] - inlet temperature of water
Tci=50;  //[degC] - outlet temperture of water
deltaT1=Thi-Tci;
deltaT2=Tho-Tco;
LMTD=(deltaT2-deltaT1)/(log(deltaT2/deltaT1));
Ai=qtotal/((Ui*LMTD));
printf("\n\n (b) counter flow \n  Ai = %f m^2",Ai);
// (c) - 1-2 shell and tube 
Thi=120;  //[degC] - inlet temperature of hydrocarbon
Tho=65;  //[degC] - outlet temperature of hydrocarbon
Tci=15;  //[degC] - inlet temperature of water
Tco=50;  //[degC] - outlet temperture of water
Z=(Thi-Tho)/(Tco-Tci);
nh=(Tco-Tci)/(Thi-Tci);
deltaT1=Thi-Tco;
deltaT2=Tho-Tci;
F=0.92;
LMTD=(F*(deltaT2-deltaT1))/(log(deltaT2/deltaT1));
Ai=qtotal/((Ui*LMTD));
printf("\n\n (c) 1-2 shell and tube \n  Ai = %f m^2",Ai);
// (d) - 2-4 shell and tube
Thi=120;  //[degC] - inlet temperature of hydrocarbon
Tho=65;  //[degC] - outlet temperature of hydrocarbon
Tci=15;  //[degC] - inlet temperature of water
Tco=50;  //[degC] - outlet temperture of water
Z=(Thi-Tho)/(Tco-Tci);
nh=(Tco-Tci)/(Thi-Tci);
F=0.975;
LMTD=(F*(deltaT2-deltaT1))/(log(deltaT2/deltaT1));
Ai=qtotal/((Ui*LMTD));
printf("\n\n (d) 2-4 shell and tube \n  Ai = %f m^2",Ai);


