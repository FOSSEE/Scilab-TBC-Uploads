printf("\t example 19.4 \n");
eS=0.9; // assumed
TG=1500;
TS=650;
pCO2=0.1084;
pH2O=0.1248;
printf("\t approxiate values are mentioned in the book \n");
L=(0.4*8.5)-(0.567*5);  // table 19.1
printf("\t L is : %.3f ft \n",L);
pH2OL=0.1248*L;
pCO2L=0.1084*L;
printf("\t pH2OL is : %.4f atm-ft \n",pH2OL);
printf("\t pCO2L is : %.4f atm-ft \n",pCO2L);
qH2O=1050; // at TG, from fig 19.12 ana 19.13
qCO2=1700; // at TG, from fig 19.12 ana 19.13
qTG=(qH2O+qCO2);
printf("\t qTG is : %.0f \n",qTG);
qsH2O=165; // at TS, from fig 19.12 ana 19.13
qsCO2=160; // at TS, from fig 19.12 ana 19.13
qTS=(qsH2O+qsCO2);
printf("\t qTG is : %.0f \n",qTS);
q=(0.9*(qTG-qTS)); // q=(QRC/A)
printf("\t q is : %.1f \n",q);
P=((pCO2)/(pCO2+pH2O));
printf("\t percentage correction at P : %.3f \n",P);
Pt=pCO2L+pH2OL;
printf("\t Pt is : %.4f \n",Pt);
// %correction estimated to be 2%
q1=(q*0.98); // // q1=(QRC/A)
printf("\t q1 is : %.2e \n",q1);
hr=(q1/(TG-TS));
printf("\t radiation coefficient is : %.2f Btu/(hr)*(ft^2)*(F) \n",hr);
//end


