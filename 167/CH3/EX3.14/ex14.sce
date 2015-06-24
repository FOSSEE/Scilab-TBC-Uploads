//ques14
//Temperature Drop of a Lake Due to Evaporation
clear
clc
Psat=3.17//saturated pressure in kPa @ 25 C
Pv1=0.1*Psat//pressure for 10% humidity in kPa
Pv2=0.8*Psat//pressure for 80% humidity in kPa 
Pv3=1*Psat//pressure for 100% humidity in kPa
T1=-8.0;//Temp in K
T2=21.2;//Temp in K
T3=25;//Temp in K
printf( 'Corresponding Temperatures(in C) are(From table A-5) \n T1 = %.1f K \n T2 = %.1f K \n T3 = %.1f K ',T1,T2,T3 );
