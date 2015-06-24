printf("\t example 14.2 \n");
printf("\t approximate values are mentioned in the book \n");

wf = 50000; //  lb/hr
sf = wf * 0.10; //  lb/hr
tp = sf/0.50; // lb/hr
printf("\tTotal product is %.0f lb/hr\n",tp);
te = wf - tp;
printf("\tTotal evaporation is %.0f lb/hr\n",te);
cf = 1.0;
tF = 100;  // °F
T1 = 244; // °F
T2 = 125; // °F
U1=600; // Btu/((hr)*(ft^2)*(°F))
U2=250; // Btu/((hr)*(ft^2)*(°F))
U3=125; // Btu/((hr)*(ft^2)*(°F))

T = T1-T2;
printf("\tTotal temperature difference is delT%.0f °F\n",T);
df = (26.70- 1.95)/3; // psi/effect
printf("\tAverage pressure difference is delP%.2f psi/effect \n",df);

printf("\n\t\t\t\t\tPressure, psia\t\t delP, psi \t Steam or vapor, °F \t lambda, Btu/lb\n\tSteam chest, 1st effect \t 26.70 \t\t\t .... \t\t Ts = 244 \t\t ls = 949 \n\tSteam chest, 2nd effect \t 18.45 \t\t\t 8.25 \t\t t1 = 224 \t\t l1 = 961 \n\tSteam chest, 3rd effect \t 10.20(20.7 in. Hg) \t 8.25 \t\t t2 = 194 \t\t l1 = 981 \n\tVapor to condenser \t\t 1.95(26 in. Hg) \t 8.25 \t\t t2 = 125 \t\t l1 = 1022 \n");

printf("\t949*Ws + 50000*(100-224) = 961*w1\n\t961*w1 + (50000 - w1)*(224-194) = 981 * w2\n\t981*w2 + (50000-w1-w2)(194-125) = 1022 * w2\n\tw1+w2+w3 = 40000\n");
printf("\tSolving simultaneously\n");
w1=12400;
printf("\tw1 = %.2e \n",w1);
w2=13300;
printf("\tw2 = %.2e \n",w2);
w3=14300;
printf("\tw3 = %.2e \n",w3);

Wt = w1+w2+w3;
printf("\tW1-3 is %.0e \n",Wt);
Ws = 19100;
lms = 949;
lm1 = 961;
lm2 = 981;
lm3 = 1022;
Ts = 244;
t1 = 224;
t2 = 194;
t3 = 125;

A1 = (Ws * lms)/(U1*(Ts-t1)); //ft^2
printf("\tA1 is %.0f ft^2 \n",A1);
A2 = (w1*lm1)/(U2*(t1-t2)); //ft^2
printf("\tA2 is %.0f ft^2 \n",A2);
A3 = (w2 * lm2)/(U3*(t2-t3)); //ft^2
printf("\tA3 is %.0f ft^2 \n",A3);

hc = w3 * lm3; // Btu/hr, WRONG CALCULATION IN TEXT BOOK
printf("\tHeat to condenser is %.3e Btu/hr\n",hc);
wr = hc/(120-85); //lb/hr
printf("\tWater requirement is %.1e lb/hr\n",wr);
wr1 = wr/500;
printf("\t= %.0f gpm \n",wr1);
//end
