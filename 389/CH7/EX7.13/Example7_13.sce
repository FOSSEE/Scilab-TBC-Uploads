clear;
clc;

// Illustration 7.13
// Page: 254

printf('Illustration 7.13\n\n');

// solution

// Given
Tempg1=65;// [OC]
Y1_prime=0.0170;// [kg water/kg dry air]
// Using adiabatic satursion line on Fig. 7.5 (Pg 232)
Tempas=32;// [OC]
Yas_prime=0.0309;// [kg water/kg dry air]
Tempg2=45;// [OC]
Z=2;// [m]
//*******//

Y2_prime=0.0265;// [kg water/kg dry air]
deff('[y]=f19(Kya_by_Gs)','y=log((Yas_prime-Y1_prime)/(Yas_prime-Y2_prime))-(Kya_by_Gs*Z)');
Kya_by_Gs=fsolve(1,f19);// [1/m]

// For the extended chamber:
Z=4;// [m]
deff('[y]=f20(Y2_prime)','y=log((Yas_prime-Y1_prime)/(Yas_prime-Y2_prime))-(Kya_by_Gs*Z)');
Y2_prime=fsolve(0.029,f20);//[kg water/kg dry air] 
// With the same adiabatic curve:
Tempg2=34;// [OC]
printf("The Outlet Conditions are:\n");
printf("Absolute Humidity is %f kg water/kg dry air\n",Y2_prime);
printf("Dry Bulb Temperature is %f OC\n",Tempg2);