 clc;funcprot(0);//Example 9.24
//Initilisation of Variables
A=25;...//Total surface area of furnance in m^2
V=10;...//Volume of furnance in m^3
Tw=500;....//Constant temparature in K
Tg=1250;.....//Gas temparature in K
Pg=2;....//Total pressure in atm
Pco2=0.2*Pg;...//Carbondioxide Pressure containing in furnance
Ph2o=0.1*Pg;....//Water vapoure pressure containing in furnance
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
L=3.6*(V/A);....//Characterstic length in m
eco2i=0.18;....//Emissivity of carbondioxide from the chart for PL&Tg values
eh2oi=0.19;....//Emissivity of water vapour from the chart for PL&Tg values
Cco2i=1.1;...//Common correction factor of carbondioxide from the chart for PL&Tg values
Ch2oi=1.45;....//Common correction factor of water vapour from the chart for PL&Tg values
P1=(Pco2*L)+(Ph2o*L);...//
P2=((Ph2o/Ph2o)+Pco2);....//
DeltEi=0.045;.....//Common correction factor P1&P2 from the chart
eg=(eco2i*Cco2i)+(eh2oi*Ch2oi)-DeltEi;...//Emissivity of gas at Tg
eco2ii=0.14;....//Emissivity of carbondioxide from the chart for PL&Tw values
eh2oii=0.2;....//Emissivity of water vapour from the chart for PL&Tw values
Cco2ii=1.1;...//Common correction factor of carbondioxide from the chart for PL&Tw values
Ch2oii=1.46;....//Common correction factor of water vapour from the chart for PL&Tw values
DeltEii=0.01;.....//Common correction factor from the chart
Ag=(eco2ii*(Tg/Tw)^0.65)+(eh2oii*(Tg/Tw)^0.45)-DeltEii;....//Emissivity of gas
Q=A*R*((eg*Tg^4)-(Ag*Tw^4));.....//Heat Exchange from the gases to the furnance wall in W
hr=Q/(A*(Tg-Tw));.....//Radiation heat transfer coeff9icient in W/m^2 degrees celcius
disp(Q/1000,"Heat Exchange from the gases to the furnance wall in kW:")
disp(hr,"Radiation heat transfer coeff9icient in W/m^2 degrees celcius:")
