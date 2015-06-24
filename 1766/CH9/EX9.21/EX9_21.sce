clc;funcprot(0);//Example 9.21
//Initilisation of Variables
d=1.5;...//Diameter of spherical shape in m
Tg=1500;.....//Gas temparature in K
Pi=1;....//Total pressure at condition 1 in atm
Pii=4;....//Total pressure at condition 2 in atm
Piii=0.4;....//Total pressure at condition 3 in atm
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
L=0.7*d;....//Characterstic length of sphere in m
Pco2i=0.2*Pi*L;...//Carbondioxide Pressure containing in furnance for condition 1
eco2i=0.12;....//Emissivity of carbondioxide from the chart for Pg&Pco2 values for condition 1
Cco2i=1;...//Common correction factor of carbondioxide from the chart for condition 1
Pco2ii=0.2*Pii*L;...//Carbondioxide Pressure containing in furnance for condition 2
eco2ii=0.27;....//Emissivity of carbondioxide from the chart for Pg&Pco2 for values condition 2
Cco2ii=1.2;...//Common correction factor of carbondioxide from the chart for condition 2
Pco2iii=0.2*Piii*L;...//Carbondioxide Pressure containing in furnance for condition 3
eco2iii=0.08;....//Emissivity of carbondioxide from the chart for Pg&Pco2 for values condition 3
Cco2iii=0.8;...//Common correction factor of carbondioxide from the chart for condition 3
disp(eco2i*Cco2i,"Emissivity of carbondioxide in a gas body for condition 1:")
disp(eco2ii*Cco2ii,"Emissivity of carbondioxide in a gas body for condition 2:")
disp(eco2iii*Cco2iii,"Emissivity of carbondioxide in a gas body for condition 3:")
