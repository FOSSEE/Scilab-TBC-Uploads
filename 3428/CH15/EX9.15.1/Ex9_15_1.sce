//Section-9,Example-1,Page no.-E.5
//To calculate the potential of the electrode at 25 degree celcius.
clc;
C=0.1                         //Concentration of solution.
C_96=C*(96/100)              //Concentration of Zn^2+ at 96% dissociation.
R=8.314
T=25+273                     //Temperature in Kelvin
E_0=-0.76
n=2
F=96500
E=E_0-(((R*T)/(n*F))*log(1/C_96))
disp(E,'Potential of electrode(V)')
