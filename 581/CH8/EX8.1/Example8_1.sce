
clear;
clc;

printf("\t Example 8.1\n");

T1=313;     //fluid temp.,K
T2=287;     //air temp.,K
H=0.4;      //height of sides,m
Pr=0.711;   //prandtl no.


 b=1/T2;    // b=1/v*d(R*T/p)/dt=1/To   characterisation constant of thermal expansion of solid, K^-1
 RaL=9.8*b*(T1-T2)*H^3/((1.566*10^-5)*(2.203*10^-5));    //Rayleigh no.
 
 Nu=0.678*RaL^(0.25)*(Pr/(0.952+Pr))^(1/4);        // nusselt no.
 h=Nu*0.02614/H     // average heat transfer coefficient, W/m^2/K
 
 q=h*(T1-T2)        // average heat transfer,W/m^2
 c=3.936*((0.952+Pr)/Pr^2)^(1/4)*(1/(RaL/Pr)^0.25);   //boundary layer thickness.,m
 printf("\t  average heat transfer coefficient is : %.2f W/m^2/K\n",h);
 printf("\t average heat transfer is : %.1f W/m^2\n",q);
 printf("\t boundary layer thickness is : %.3f m\n",c);
 
 printf("\t thus the BL thickness at the end of the plate is only 4 percent of the height, or 1.72 cm thick.this is thicker thsan typical forced convection BL but it is still reasonably thin.")
  
  //end