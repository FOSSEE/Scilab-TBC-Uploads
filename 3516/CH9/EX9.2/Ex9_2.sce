printf("\t example 9.2 \n");
printf("\t approximate values are mentioned in the book \n");
V1=4670; // inlet air volume,cfm
Pp=0.8153; // Saturation partial pressure of water at 95F,psi,from table 7
Ps=404.3;//  Saturation specific volume of water at 95F,ft^3/lb, from table 7
printf("\t The air and water both occupy the same volume at their respective partial pressures \n");
Vw1=(V1*60/Ps); // water entering per hr,lb
printf("\t volume of water entering is : %.0f lb \n",Vw1);
printf("\t for first stage \n");
c=2.33; // compression ratio
P1=14.7; // psi
P2=(P1*c); // (c=(P2/P1)),psi
printf("\t P2 is : %.1f psi \n",P2);
gama=1.4; // for air
T1abs=95; // F
T2absr=((T1abs+460)*(P2/P1)^((gama-1)/gama));
printf("\t T2absr is : %.0f R \n",T2absr);
T2abs=(T2absr-459.67); // F
printf("\t T2abs is : %.0f F \n",T2abs);
printf("\t for intercooler \n");
V2=(V1*60*P1/P2); // ft^3/hr
printf("\t final gas volume is : %.1e ft^3/hr \n",V2);
Vw2=(V2/Ps); // water remaining in air, lb/hr
printf("\t water remaining in air is : %.0f lb/hr \n",Vw2);
C=(Vw1-Vw2); // condensation in inter cooler, lb/hr
printf("\t condensation in inter cooler is : %.0f lb/hr \n",C);
Vs=14.8; // Specific volume of atmospheric air,ft^3/lb
printf("\t Specific volume of atmospheric air is : %.1f ft^3/lb \n",Vs);
Va=(V1*60/Vs); // air in inlet gas, lb/hr
printf("\t air in inlet gas is : %.2e lb/hr\n",Va);
printf("\t heat load(245 to 95F) \n)");
printf("\t sensible heat \n");
Qair=((Va)*(0.25)*(245-T1abs)); // Btu/hr
printf("\t Qair is : %.2e Btu/hr \n",Qair);
Qwaters=(Vw1*0.45*(245-T1abs)); // Btu/hr
printf("\t Qwaters is : %.2e Btu/hr \n",Qwaters);
printf("\t latent heat \n");
l=1040.1; // latent heat
Qwaterl=(C*l); // Btu/hr
printf("\t Qwater1 is : %.2e Btu/hr \n",Qwaterl);
Qt1=Qair+Qwaters+Qwaterl;
printf("\t total heat is : %.3e Btu/hr \n",Qt1);
printf("\t for second stage \n");
c=2.33; // compression ratio
P3=(P2*c); // (c=(P3/P1)),psi
printf("\t P3 is : %.1f psi \n",P3);
V3=(V1*60*P1/P3); // ft^3/hr
printf("\t final gas volume is : %.2e ft^3/hr \n",V3);
Vw3=(V3/Ps); // water remaining in air, lb/hr
printf("\t water remaining in air is : %.1f lb/hr \n",Vw3);
C1=(297-Vw3); // condensation in inter cooler, lb/hr
printf("\t condensation in inter cooler is : %.1f lb/hr \n",C1);
printf("\t heat load(245 to 95F) \n)");
printf("\t sensible heat \n");
Qair=(Va*0.25*(245-T1abs)); // Btu/hr
printf("\t Qair is : %.2e Btu/hr \n",Qair);
Qwaters=(Vw2*0.44*(245-T1abs)); // Btu/hr
printf("\t Qwater is : %.2e Btu/hr \n",Qwaters);
printf("\t latent heat \n");
l=1040.1; // latent heat
Qwaterl=(C1*l); // Btu/hr, calculation mistake in book
printf("\t Qwater is : %.2e Btu/hr \n",Qwaterl);
Qt1=Qair+Qwaters+Qwaterl;
printf("\t total heat is : %.3e Btu/hr \n",Qt1);
// end
