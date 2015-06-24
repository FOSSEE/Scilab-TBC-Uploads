printf("\t example 19.1 \n");
// For orientation purposes, one can make an estimate of the number of tubes required in the radiant section by assuming avg flux is 12000 Btu/(hr)*(ft^2)
// from Fig.19.14 it can be seen that with a tube temperature of 800"F, an exit-gas temperature of l730°F will be required to effect such a flux.
printf("\t approxiate values are mentioned in the book \n");
Q=50000000; // Btu/hr
QF=(Q/0.75); // efficiency of tank is 75%
printf("\t heat liberated by the fuel : %.3e Btu/hr \n",QF);
w1=(QF/17130); // heating value of fuel is 17130Btu/lb
printf("\t fuel quantity : %.2e lb/hr \n",w1);
w2=(w1*17.44); // lb of fuel fired with 17.44lb of air
printf("\t air required : %.2e lb/hr \n",w2);
w3=(w1*0.3); // 0.3 lb of air is used for atomizing lb of fuel
printf("\t steam for atomizing : %.2e lb/hr \n",w3);
QA=(w2*82); // heating value at 400F is 82Btu/lb
printf("\t QA is : %.2e Btu/hr \n",QA);
printf("\t QS is negligible \n");
QW=(0.02*QF);
printf("\t QW is : %.2e Btu/hr \n",QW);
Qnet=(QF+QA-QW);
printf("\t Qnet is : %.2e Btu/hr \n",Qnet);
//Heat out m gases at 1730°F, 25 per cent excess air, 476 Btu/lb of flue gas
QG=(476*(w1+w2+w3));
printf("\t QG is : %.2e Btu/hr \n",QG);
Q1=(Qnet-QG);
printf("\t Q1 is : %.2e Btu/hr \n",Q1); // calculation mistake in book
A=(3.14*38.5*(5/12)); // area of tube
printf("\t area of tube is : %.1f ft^2 \n",A);
Nt=(Q1/(12000*A)); // 12000 is avg flux
printf("\t estimated number of tubes : %.0f \n",Nt);
// The layout of the cross section of the furnace may be as shown m Fig. 19.16.
// center to center distance is 8(1/2)in
Acp=(8.5*38.5/12);
printf("\t cold plane surface per tube : %.1f ft^2 \n",Acp); // calculation mistake in book
a=0.937; // a=alpha, from fig 19.11 as Ratio of center-to-center/OD is 1.7
Acp1=(Acp*a);
printf("\t Acp1 is : %.0f ft^2 \n",Acp1);
Acpt=(Acp1*Nt);
printf("\t total cold plane surface is : %.1e ft^2 \n",Acpt);
A1=(2*20.46*14.92); // from fig 19.16
printf("\t surface of end walls : %.0f ft^2 \n",A1);
A2=(38.5*14.92); // from fig 19.16
printf("\t surface of side wall : %.0f ft^2 \n",A2);
A3=(38.5*9.79); // from fig 19.16
printf("\t surface of bridge walls : %.0f ft^2 \n",A3);
A4=(2*20.46*38.5); // from fig 19.16
printf("\t surface of floor and arch : %.0f ft^2 \n",A4);
AT=(A1+A2+A3+A4);
printf("\t AT is : %.0f ft^2 \n",AT);
AR=(AT-Acpt);
printf("\t AR is : %.0f ft^2 \n",AR);
Ar=(AR/Acpt);
printf("\t ratio of areas is : %.2f \n",Ar);
printf("\t dimension ratio is 3:2:1 \n");
L=((2/3)*(38.5*20.46*14.92)^(1/3));
printf("\t length is : %.0f ft \n",L);
printf("\t gas emissivity \n");
// From the analysis of the fuel, the steam quantity, and the assumption that the humidity of the air is 50 per cent of saturation at 60F, the partial pressures of CO2 and H2O in the combustion gases with 25 per cent excess air are
pCO2=0.1084;
pH2O=0.1248
pCO2L=1.63; // pCO2L=(pCO2*L)
pH2OL=1.87;
P=((pCO2)/(pCO2+pH2O));
printf("\t percentage correction at P : %.3f \n",P);
Pt=pCO2L+pH2OL;
printf("\t Pt is : %.2f \n",Pt);
// %correction estimated to be 8%
eG=(((6500+14500)-(650+1950))/(39000-4400))*((100-8)/100); // values from fig 19.12 and 19.13, eq 19.5
printf("\t eG is : %.3f \n",eG);
f=0.635; // from fig 19.15 as (AR/Acpt)=1.09 and eG=0.496
printf("\t overall exchange factor : %.3f \n",f);
Z=(Q1/(Acpt*f));
printf("\t Z is : %.2e \n",Z);
printf("\t TG required (at Ts = 800F) = 1670F compared with 1730°F assumed in heat balance) \n");
// end
