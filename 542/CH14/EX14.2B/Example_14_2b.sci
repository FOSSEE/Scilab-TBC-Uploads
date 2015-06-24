clear;
clc;
printf("\n Example 14.2b");
deltaT1 = 20;             //temperature is in deg K
deltaT2 = 24;             //temperature is in deg K
deltaT3 = 25;             //temperature is in deg K
To = 394;                 //temperature is in deg K
T1 = 374;                 //temperature is in deg K
T2 = 350;                 //temperature is in deg K
T3 = 325;                 //temperature is in deg K
latent_heat0 = 2200;      //latent heat in kJ/kg
latent_heat1 = 2254;      //latent heat in kJ/kg
latent_heat2 = 2314;      //latent heat in kJ/kg
latent_heat3 = 2377;      //latent heat in kJ/kg

//Effect 3:
//            2314 D2 = 4 × 4.18(325 − 294) + 2377 D3

//Effect 2:
//            2254 D1 = (4 − D3)4.18(350 − 325) + 2314 D2

//Effect 1:
//            2200 D0 = (4 − D3 − D2)4.18(374 − 350) + 2254 D1

//(D1 + D2 + D3) = 3.2 kg/s

D = [0 2314 -2377;2254 -2314 4.18*(350-325);1 1 1];
C = [4*4.18*(325-294);4*4.18*(350-325);3.2];
D1 = inv(D)*C;
printf("\n D1 = %.3f kg/s",D(1));
printf("\n D2 = %.3f kg/s",D(2));
printf("\n D3 = %.3f kg/s",D(3));
A1  = 1.387*latent_heat0/(2.5*20);
A2 = 1.261*latent_heat1/(2*24);
A3 = 1.086*latent_heat2/(1.6*25);
printf("\n A1 = %.1f m^2",A1);
printf("\n A2 = %.1f m^2",A2);
printf("\n A3 = %.1f m^2",A3);


















