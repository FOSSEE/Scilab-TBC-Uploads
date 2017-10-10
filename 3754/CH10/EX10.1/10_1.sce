clear//

//Variables

R = 1000.0                          //Resistance (in ohm)
sig = 5.8 * 10**7                   //Conductivity in (Siemen per meter)
d = 10**-3                          //diameter (in meter)
E = 10 * 10**-3                     //Eletric field (in Volt per meter)

//Calculation

l = R *sig * %pi * d**2 /4      //length (in meter)
J = sig * E                         //Current density (in Ampere per metersquare)

//Result

printf("\n Length of wire is  %0.2f  km.\nCurrent desity is  %0.3f  A/(m*m).",l/1000,J)
