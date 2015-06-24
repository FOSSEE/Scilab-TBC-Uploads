//Chapter 6, Problem 12
clc;
C1=1*10^-6;                     //Capacitance
C2=3*10^-6;
C3=5*10^-6;
C4=6*10^-6;
V=100;                              //Voltage across capacitor
C=C1+C2+C3+C4;                  //Calculating equivalent capacitance in series
Q=C*V;                          //Calcuating total charge
Q1=C1*V;                        //Calculating charge on each capacitor
Q2=C2*V;
Q3=C3*V;
Q4=C4*V;
disp("(a)");
printf("Equivalent capacitance C for parallel = %f uF\n\n\n",C*10^6);
disp("(b)");
printf("Total charge = %f mC\n\n",Q*1000);
disp("(2)");
disp("Charge on each capacitor");
printf("Charge on capacitor1 = %f mC\n",Q1*1000);
printf("Charge on capacitor2 = %f mC\n",Q2*1000);
printf("Charge on capacitor3 = %f mC\n",Q3*1000);
printf("Charge on capacitor4 = %f mC\n",Q4*1000);
