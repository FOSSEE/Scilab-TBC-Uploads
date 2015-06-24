//Chapter 20, Problem 17
clc;
P1=10;                          //power 1 in watt
P2=-3;                          //power 2 in watt
P=P1+P2;                        //total input power
phi=atan(sqrt(3)*((P1-P2)/(P1+P2)));
pf=cos(phi);                    //load power factor
disp("Since the reversing switch on the wattmeter had to be operated the 3kW reading is taken as −3 kW");
printf("(a) Total input power = %f kW\n\n",P);
printf("(b) Power factor = %f ",pf);
