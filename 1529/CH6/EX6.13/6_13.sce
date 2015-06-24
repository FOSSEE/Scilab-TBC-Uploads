//Chapter 6, Problem 13, Figure 6.8
clc;
C1=3*10^-6;                      //Capacitance on each capacitor
C2=6*10^-6;
C3=12*10^-6;
V=350;                          //Total voltage across capacitors
C=(1/C1)+(1/C2)+(1/C3);         //Calculating equivalent capacitance
C=1/C;
Q=C*V;
V1=Q/C1;                    //Calculating voltage across each capacitor
V2=Q/C2;
V3=Q/C3;
disp("(a)");
printf("Equivalent circuit capacitance = %f uF\n\n\n",C*10^6);
disp("(b)");
printf("Charge on each capacitor = %f uF\n\n",Q*10^6);
disp("(c)");
printf("Voltage across 3uF capacitor = %f V\n",V1);
printf("Voltage across 6uF capacitor = %f V\n",V2);
printf("Voltage across 12uF capacitor = %f V\n",V3);
