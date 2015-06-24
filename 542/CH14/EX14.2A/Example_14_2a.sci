clear;
clc;
printf("\n Example 14.2a");
//Temperature of dry saturated steam at 205 kN/m2 = 394 K.
//At a pressure of 13 kN/m2 (0.13 bar), the boiling point of water is325 K, so that the totaltemperature difference &T = (394 − 325) = 69deg K.


//First Approximation.

//Assuming that: U1*deltaT1 = U2*deltaT2 = U3*deltaT3
//then substituting the values of U1, U2 and U3 and &T = 69 deg K gives:
printf("\n deltaT1 = %f deg K",13);
printf("\n deltaT2 = %f deg K",20);
printf("\n deltaT2 = %f degK",36);

//Since the feed is cold, it will be necessary to have a greater value of T1 than given by this analysis. It will be assumed that T1 = 18 deg K, T2 = 17 deg K, T3 = 34 deg K.

//For steam to 1: T0 = 394 K and λ0 = 2200 kJ/kg
//For steam to 2: T1 = 376 K and λ1 = 2249 kJ/kg
//For steam to 3: T2 = 359 K and λ2 = 2293 kJ/kg
//                T3 = 325 K and λ3 = 2377 kJ/kg

//Assuming that the condensate leaves at the steam temperature, then heat balances across each effect may be made as follows:

//Effect 1 :
//2200 D0 = 4 × 4.18(376 − 294) + 2249 D1

//Effect 2:
//2249 D1 + (4 − D1)4.18(376 − 359) = 2293 D2

//Effect 3:
//2293 D2 + (4 − D1 − D2)4.18(359 − 325) = 2377 D3

printf("\n          Solids             liquor             Total  ");
printf("\n          (kg/s)             (kg/s)             (kg/s) ");
printf("\nFeed       %.1f               %.1f               %.1f  ",0.4,3.6,4.0);
printf("\nProduct    %.1f               %.1f               %.1f  ",0.4,0.4,0.8);
printf("\nEvaporation                   %.1f               %.1f  ",3.6-0.4,4.0-0.8);

//D1 + D2 + D3 = 3.2 kg/s
D = [2177.94 -2293 0;-4.18*(359-325) 2293-4.18*(359-325) -2377;1 1 1];
C = [-4*4.18*(376-359);-4*4.18*(359-325);3.2];
D1 = inv(D)*C;
printf("\n ans = %.3f kg/s",D1);

D0 = (4*4.18*(376-294)+2249*D1(1))/2200;
A1 = D0*2200/(3.1*18);
printf("\n A1 = %.1f m^2",A1);
A2 = D1(1)*2249/(2*17);
printf("\n A2 = %.1f m^2",A2);
A3 = D1(2)*2293/(1.1*34);
printf("\n A3 = %.1f m^2",A3);
printf("\n These three calculated areas are approximately equal, so that the temperature differences assumed may be taken as nearly correct");

//let, deltaT1 = x
//deltaT2 = y
//deltaT3 = z
X = [3.1 -2.0 0;0 2.0 -1.1;1 1 1];
A = [0;0;69];
T = inv(X)*A;
printf("\n deltaT1 = %d deg K",T(1));
printf("\n deltaT2 = %d deg K",T(2));
printf("\n deltaT3 = %d deg K",T(3));

//ghting the temperature differences to allow for the fact that the feed enters at ambient temperature gives:
//deltaT1 = 18 deg Kdelta T2 = 18 degK delta T3 = 33 deg K
Steam_temp = 394;
T1 = Steam_temp-18;
printf("\n T1 = %d K",T1);
T2 = T1 - 18;
printf("\n T2 = %d K",T2);
T3 = T2 - 33;
printf("\n T3 = %d K",T3);

//The total evaporation (D1 + D2 + D3) is obtained from a material balance:
printf("\n          Solids             liquor             Total  ");
printf("\n          (kg/s)             (kg/s)             (kg/s) ");
printf("\nFeed       %.1f               %.1f               %.1f  ",0.4,3.6,4.0);
printf("\nProduct    %.1f               %.1f               %.1f  ",0.4,0.4,0.8);
printf("\nEvaporation                   %.1f               %.1f  ",3.6-0.4,4.0-0.8);

//Assuming, as an approximation, equal evaporation in each effect, or D1 = D2 = D3 = 1.07 kg/s, then the latent heat of flash vaporisation in the second effect is given by:
q = 4.18*(4-1.07)*(376-358);
printf("\n latent heat of flash vaporisation in the second effect is = %.1f kW",q);
printf("\n latent heat of flash vaporisation in the third effect is:= %.1f kW ",4.18*(4-2*1.07)*(358-325));
printf("\n At 394 K, the latent heat = 2200 kJ/kg");
printf("\n At 325 K, the latent heat = 2377 kJ/kg");
printf("\n Mean value, λ = 2289 kJ/kg");

printf("\n Values ofT1,T2T3 are now chosen by trial and error to give equal values of A in each effect, as follows");
printf("\n deltaT1    A1    deltaT2    A2     deltaT3      A3");
printf("\n (deg K)   (m^2)  (deg K)   (m^2)   (deg K)      m^2");
printf("\n   18      64.2     18       61.4     33         66.9 ");   
printf("\n   19      60.5     17       65.0     33         66.9");    
printf("\n   18     64.2    17.5      63.1     33.5       65.9"); 
printf("\n   18     64.2    17        65.0     34         64.9");

printf("\n Steam consumption = %.2f kg/s",3580/2289);
printf("\n Economy = %.1f kg/kg",3.2/1.56);















