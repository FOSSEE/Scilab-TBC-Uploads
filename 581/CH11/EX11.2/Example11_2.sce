
clear;
clc;

printf("\t Example 11.2\n");

r=0.00241;        //rate of consumption of carbon,kg/(m^2*s)
Mo2=0.2;    //concentration of oxygen at surface s
Mco2=0.052;    //concentration of CO2 at surface s
as=0.29;    //density of surface s,kg/m^3

//since carbon flows through a second imaginary surface u, the mass fluxes are relatedd by    Ncu=-12/32*No2s=12/44*Nco2s
//the minus sign arises because the O2 flow is opposite the C and CO2 flows.in steady state if we apply mass conservation to the control volume between the u and s surface, wee find that the total mass flux entering the u surface equals that leaving the s surface

Ncu=r;    //mass fluxes of carbon in u surface,kg/m^2/s

No2s=-32/12*Ncu;    //mass flux of O2 in surface s,kg/(m^2*s)
Nco2s=44/12*Ncu;    //mass flux of CO2 in surface s,kg/(m^2*s)
Vo2s=No2s/(Mo2*as);    //mass average speed,m/s
Vco2s=Nco2s/(as);    //mass average speed,m/s

Vs=(Nco2s+No2s)/as;    //effective mass average speed,m/s
j1=0.0584*(Vo2s-Vs)+0.000526;    //diffusional mass flux,kg/(m^2*s)
j2=0.0087+0.00014;    //diffusional mass flux,kg/(m^2*s)
//the diffusional mass fluxes are very nearly equal to the species m ss fluxes. tha is because the mass average speed is much less than species speeds.

N1=Ncu/12;    //mole flux of carbon through the surface s,kmol/(m^2*s)
N2=-N1;        //mole flux of oxygen through the surface s,kmol/(m^2*s)
printf("\t mass flux of O2 through an imaginary surface is :%.5f kg/(m^2*s)\n",j1);
printf("\t mass flux of CO2 through an imaginary surface is :%.5f kg/(m^2*s)\n",j2);

printf("\t mole flux of Co2 through an imaginary surface is :%f kmol/(m^2*s)\n",N1);
printf("\t mole flux of O2through an imaginary surface is :%f kmol/(m^2*s)\n",N2);
printf("\t the two diffusional mole fluxes sum to zero themselves because ther is no convective mole flux for other species to diffuse against. the reader may ind the velocity of the interface.that calculation shows the interface to be receding so slowly that the velocities are equal to those that would be seen by a stationary observer. ")
//end
