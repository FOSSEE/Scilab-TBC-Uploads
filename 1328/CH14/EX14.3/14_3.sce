printf("\t example 14.3 \n");
printf("\t approximate values are mentioned in the book \n");
//Same conditions as example 14.2
U1 = 400; //Btu/((hr)*(ft^2)*(°F))
U2 = 250; //Btu/((hr)*(ft^2)*(°F))
U3 = 175; //Btu/((hr)*(ft^2)*(°F))

w1 = 50000; // lb/hr     From example 14.2
wt = 40000; // lb/hr     From example 14.2
cf = 1; // From example 14.2

printf("\t981*w2 + 50000*(100-125) = 1022*w3\n\t961*w1 + (50000 - w3)*(125-194) = 981 * w2\n\t949*Ws + (50000-w3-w2)(194-224) = 961 * w1\n\tw1+w2+w3 = 40000\n");
printf("\tSolving simultaneously\n");
w1 = 15950;
w2 = 12900;
w3 = 11150;
lms = 949;
lm1 = 961;
lm2 = 981;
lm3 = 1022;

wt = w1+w2+w3;
printf("\tw1-3 = %.0f \n",wt);
Ws = 16950;
A1 = (Ws*lms)/(U1*20); //ft^2
printf("\tA1 is %.0f ft^2\n",A1);
A2 = (w1*lm1)/(U2*30); //ft^2
printf("\tA2 is %.0f ft^2\n",A2);
A3 = (w2*lm2)/(U3*69); //ft^2
printf("\tA3 is %.0f ft^2\n",A3);

Avs = (A1 + A2 + A3)/3; //ft^2
printf("\tAverage surface is %.0f ft^2\n",Avs);
Av1 = 3 * Avs; //ft^2
printf("\n\tWith a better distribution temperatures and pressure, Average surface is  %.0f ft^2\n",Av1);
printf("\tRecalculation\n");
Av2 = 1500; //ft^2, assume
dT1 = 28; //°F
A4 = (20/dT1)*A1; //ft^2
printf("\tA1 is %.0f ft^2\n",A4);
dT2 = 41; //°F
A5  = (30/dT2)*A2; //ft^2
printf("\tA2 is %.0f ft^2\n",A5);
dT3 = 50; //°F
A6 = (69/50)*A3; //ft^2
printf("\tA3 is %.0f ft^2\n",A6);
del1 = 119; //°F
printf("\tTs-t3 is %.0f °F\n",del1);
printf("\t\t\t\t\tPressure, psia\t\t Steam or vapor, °F \t lambda, Btu/lb\n\tSteam chest, 1st effect \t 26.70 \t\t\tTs = 244 \t\t 949 \n\tSteam chest, 2nd effect \t 16.0 \t\t\t t1 = 216 \t\t 968 \n\tSteam chest, 3rd effect \t 16.4 in. Hg) \t\t t2 = 175 \t\t 992 \n\tVapor to condenser \t\t 26 in. Hg \t\t t3 = 125 \t\t l1 = 1022 \n");

w1 = 15450; //Solving again for 
printf("\tw1 is %.0f\n",w1);
w2 = 13200;
printf("\tw2 is %.0f\n",w2);
w3 = 11350;
printf("\tw3 is %.0f\n",w3);
Ws = 16850;
printf("\tWs is %.0f\n",Ws);
Hc = w3 * 1022;
printf("\tHeat to condenser is %.2e Btu/hr\n",Hc);
wr = Hc/(120-85); //lb/hr
printf("\tWater requirement %.2e lb/hr\n",wr);
wr1 = wr/500;
printf("\t\t\t= %.0fgpm\n",wr1);
ec = wt/Ws;
printf("\tEconomy, lb evaporation/lb steam %.2f\n",ec);

//comparision of forward and backward feed
printf("\t\t\t\tForward\t\tBackward\n\tTotal steam, lb/hr\t19100\t\t16850\n\tCooling water, gpm\t840\t\t664\n\tTotal surface, ft^2\t4800\t\t4500");

