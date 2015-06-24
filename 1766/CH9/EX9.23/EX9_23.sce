clc;funcprot(0);//Example 9.23
//Initilisation of Variables
A=3;....//Side of cube in m
Tg=1250;.....//Gas temparature in K
Pg=2.1;....//Total pressure in atm
Pco2=0.2*Pg;...//Carbondioxide Pressure containing in furnance
Ph2o=0.15*Pg;....//Water vapoure pressure containing in furnance
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
L=0.7*A;....//Characterstic length in m
eco2=0.18;....//Emissivity of carbondioxide from the chart for PL values
eh2o=0.19;....//Emissivity of water vapour from the chart for PL values
Cco2=1.1;...//Common correction factor of carbondioxide from the chart for PT&Pco2L values
Ch2o=1.42;....//Common correction factor of water vapour from the chart for PT&Pco2L values
P1=(Pco2*L)+(Ph2o*L);...//
P2=Ph2o/(Ph2o+Pco2);....//
DeltE=0.048;.....//Common correction factor P1&P2 from the chart
eg=(eco2*Cco2)+(eh2o*Ch2o)-DeltE;...//Emissivity of gas at Tg
disp(eg,"Emissivity of gas at Tg:")
