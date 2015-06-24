clear all;
clc;
printf("\n Example 11.15");

printf("\n Dew point calculation");
xd1 = 0.975;             //n-C4 light distillate
xd2 = 0.025;            //C5 heavy key distillate
Td = 344;               //temperature in kelvins
K1 = 1.05;             //Eqillibrium constant calculation for n-C4 at 344 K
K2 = 0.41;             //Equillibrium constant calculation for C5 at 344K
//By a dew point calculation
//sum(xd)=sum(xd/K)
printf("\n Component      xd               Td = 344 K");
printf("\n                                 K       xd/K ");
printf("\n n-C4           %.3f            %.2f      %.3f",xd1,K1,xd1/K1);
printf("\n C5             %.3f            %.2f      %.3f",xd2,K2,xd2/K2);
printf("\n                %.1f                      %.3f",xd1+xd2,(xd1/K1)+(xd2/K2));

K11 = 1.04;
K21 = 0.405;
//Calculation for xd at 343 K
x = poly([0],'x');
x1 = roots(x/K11 + (1-x)/K21);
printf("\n                                                   Td = 343 K");
printf("\n                                                   K     xd/K");
printf("\n                                                  %.3f   %.3f",K11,x1/K11);
printf("\n                                                  %.3f   %.3f",K21,(1-x1)/K21);
printf("\n                                                         %.3f",x1/K11+(1-x1)/K21);
printf("\n At 343 K       K1 = 1.04      K2 = 0.405   from fig.11.39");

printf("\n\n\n Estimation of still temperature Ts");
//sum(xw) = sum(K*xw)
K31 = 3.05;            //equillibrium const at 419 K
K32 = 1.6;             //equillibrium const at 419 K
K33 = 0.87;            //equillibrium const at 419 K
K34 = 0.49;            //equillibrium const at 419 K
xw1 = 0.017;           //mass fraction of n-C4
xw2 = 0.367;           //mass fraction of C5
xw3 = 0.283;           //mass fraction of C6
xw4 = 0.333;           //mass fraction of C7

printf("\n At Ts = 416 K equillibrium constants are from fig.11.39");
printf("\n n-C4           C5        C6          C7");
printf("\n  %.2f          %.2f      %.2f       %.2f",K31,K32,K33,K34);
printf("\n\n   at Ts = 416 K");
printf("\n n-C4           C5        C6          C7");
printf("\n  %.3f          %.3f       %.3f      %.3f",xw1*K31,xw2*K32,xw3*K33,xw4*K34);
printf("\n Sum of Kxw = %d",xw1*K31+xw2*K32+xw3*K33+xw4*K34);
printf("\n Hence the still temperature Ts = 416 K");
printf("\n\n\n Calculation of feed condition");
printf("\n Component     xf         Tb = 377K         Tb = 376 K");
printf("\n                         K       Kxf        K     Kxf ");
xf1 = 0.40;
xf2 = 0.23;
xf3 = 0.17;
xf4 = 0.20;
Kb1 = 1.80;             //equillibrium constants at 377 K for n-C4
Kb2 = 0.81;             //equillibrium constants at 377 K for C5
Kb3 = 0.39;             //equillibrium constants at 377 K for C6
Kb4 = 0.19;             //equillibrium constants at 377 K for C7
Kb11 = 1.78;            //equillibrium constants at 377 K for n-C4
Kb21 = 0.79;            //equillibrium constants at 377 K for C5
Kb31 = 0.38;            //equillibrium constants at 377 K for C6
Kb41 = 0.185;           //equillibrium constants at 377 K for C7
printf("\n n-C4         %.2f     %.2f     %.3f      %.2f   %.3f",xf1,Kb1,xf1*Kb1,Kb11,xf1*Kb11);
printf("\n C5           %.2f     %.2f     %.3f      %.2f   %.3f",xf2,Kb2,xf2*Kb2,Kb21,xf2*Kb21);
printf("\n C6           %.2f     %.2f     %.3f      %.2f   %.3f",xf3,Kb3,xf3*Kb3,Kb31,xf3*Kb31);
printf("\n C7           %.2f     %.2f     %.3f      %.2f   %.3f",xf4,Kb4,xf4*Kb4,Kb41,xf4*Kb41);
printf("\n                                %.3f             %.3f",xf1*Kb1+xf2*Kb2+xf3*Kb3+xf4*Kb4,xf1*Kb11+xf2*Kb21+xf3*Kb31+xf4*Kb41);

//Calculation of pinch temperatures
printf("\n\n\n The upper pinch temperature,Tn = %d K",343+0.33*(416-343));
printf("\n The lower pinch temperature,Tm = %d K",343+0.67*(416-343));

//Calculation of approximate minimum reflux ratio.
printf("\n\n\n");
printf("\n Component      Tn = 367 K      Tm = 391 K    xfh   axfh");
printf("\n                   a                a                   ");
printf("\n n-C4              %.2f             %.2f                ",2.38,2.00);
printf("\n C5                %.2f             %.2f                ",1.00,1.00);
printf("\n C6                %.3f             %.3f      %.2f    %.3f",0.455,0.464,0.17,0.077);
printf("\n C7                %.3f             %.3f      %.2f    %.3f",0.220,0.254,0.20,0.044);
printf("\n                                                      %.3f",0.077+0.044);
rf = xf1/xf2;
printf("\n rf = %.3f",rf);
xn4 = rf/[(1+rf)*(1+0.121)];
printf("\n xn4 = %.3f",xn4);
xn5 = xn4/rf;
printf("\n xn5 = %.3f",xn5);
Rm = [1/(2.38-1)]*(0.975/0.563)-2.38*(0.025/0.325);
printf("\n Rm = %.2f",Rm);

//The streams in the column
D = 40;
Ln = D*Rm;
Vn = Ln+D;
F = 100;
Lm = Ln + F;
W = 60;
Vm = Lm - W;
Ratio = Lm/W;
printf("\n Ln = %.1f kmol",44.8);
printf("\n Vn = %.1f kmol",84.8);
printf("\n Lm = %.1f kmol",144.8);
printf("\n Vn = %.1f kmol",84.4);
printf("\n Lm/W = %.2f",Ratio);
//Check on minimum reflux ratio
//xn = xd/(a-1)Rm
xn = xd1/[(2.38-1)*Rm];
printf("\n For n-C4......xn = %.3f",xn);
xn1 = 1-xn;
printf("\n For n-C5...xn = %.3f",xn1);
printf("\n Temperature check for upper pinch gives sum of K*xn = ");
sumKxn = 1.62*xn +0.68*xn1;
printf("%.3f",sumKxn);

















  







