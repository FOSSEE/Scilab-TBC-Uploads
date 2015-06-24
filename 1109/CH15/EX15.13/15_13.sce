clear;
clc;
f1=200;f2=2400;Li=2.6;Lc1=0.494;Lc2=1.949;Ro=600;
//Li=total insertion loss
//value of f1 as taken in solution
//Lc=cable loss
Le1=Li-Lc1; //Le=equalizer loss
Le2=Li-Lc2;
M1=fix(exp(2*Le1));
M2=round(exp(2*Le2)*100)/100;
Q=((f2*f2*(M2-1))-(f1*f1*(M1-1)))/(M1-M2);
P=(f1*f1*(M1-1))+(M1*Q);
R11b=Ro*(sqrt(P)+sqrt(Q))/(sqrt(P)-sqrt(Q));
R21b=Ro*Ro/R11b;
L12b=Ro/(%pi*(sqrt(P)-sqrt(Q)));
C22b=L12b/(Ro*Ro);
L12a=Ro/(%pi*(sqrt(P)+sqrt(Q)));
R11a=Ro*(sqrt(P)-sqrt(Q))/(sqrt(P)+sqrt(Q));
R21a=Ro*Ro/R11a;
C22a=L12a/(Ro*Ro);
printf("The required equalizer will have the folllowing configuration:\n");
printf("I. R11 = %f ohms\n",fix(R11a));
printf("-L12 = %f mH\n",round(L12a*(10^4))/10);
printf("-R21 = %f ohms\n",round(R21a));
printf("-C22 = %f microfarads\n\n",round(C22a*(10^9))/10^3);
printf("II. R11 = %f ohms\n",round(R11b));
printf("-L12 = %f mH\n",fix(L12b*(10^4))/10);
printf("-R21 = %f ohms\n",round(R21b*100)/100);
printf("-C22 = %f microfarads",fix(C22b*(10^9))/10^3);
