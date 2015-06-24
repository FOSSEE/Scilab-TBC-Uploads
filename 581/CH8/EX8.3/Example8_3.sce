
clear;
clc;

printf("\t Example 8.3\n");

T1=323;     //wall temp.,K
T2=293;     //air temp.,K
H=0.3;      //height of wall, m
v1=16.45*10^-6;   // molecular diffusivity, m^2/s
b=1/T2;    // b=1/v*d(R*T/p)/dt=1/To   characterisation constant of thermal expansion of solid, K^-1
v2=2.318*10^-5;    //molecular diffusivity, m^2/s
Pr=0.71;   //prandtl no.

 Ral=9.8*b*(T1-T2)*H^3/((1.566*10^-5)*(2.203*10^-5));    // Rayleigh no.
 Nu=0.678*Ral^(0.25)*(Pr/(0.952+Pr))^(1/4);        // nusselt no.
 h=Nu*0.0267/H     // average heat transfer coefficient, W/m^2/K
 
 Nu1=0.68+0.67*((Ral)^(1/4)/(1+(0.492/Pr)^(9/16))^(4/9));    //churchill correlation 
 
 h1=Nu1*(0.0267/0.3)-.11;     //average heat transfer coefficient, W/m^2/K
 
 
printf("\t correlation average heat transfer coefficient is :%.2f W/m^2/K\n",h1)
printf("\t the prediction is therefore within 5 percent of corelation .we should use the latter result in preference to the theoritical one, although the difference is slight.")
  //end