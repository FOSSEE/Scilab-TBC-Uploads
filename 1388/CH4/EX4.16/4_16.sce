clc
//initialisation of variables
Cp= 18 //cal deg^-1
T= 0 //C
T1= -5 //C
H2= -1440 //cal
Cp1= 9 //cal deg^-1
H= 0
//CALCULATIONS
T2= (-Cp*(T-T1)-H2+Cp1*(273.16+T))/Cp1
S= Cp*log((273.16+T)/(273.16+T1))-(Cp*(T-T1)/(T+273.16))
//RESULTS
printf (' CHange in entropy= %.3f cal deg^-1',S+0.001)
