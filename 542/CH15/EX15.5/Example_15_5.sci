clear;
clc;
//The molecular mass of hydrate/molecular mass of anhydrate
 R = 380/164;
printf("\n The molecular mass of hydrate/molecular mass of anhydrate,R = %.2f",R);
//It will be assumed that the evaporation is negligible and that E = 0.
c1 = 0.23;
printf("\n The initial concentration, c1 = %.2f kg/kg solution or %.2f kg/kg water",c1,c1/(1-c1));
c2 = 15.5;
printf("\n The final concentration, c2 = %.1f kg/kg water or 0.155 kg/kg water",c2);
w1 = 0.77;
printf("\n In 1 kg of the initial feed solution, there is 0.23 kg salt and 0.77 kg water and hence w1 = %.2f kg",w1);
y = 2.32*0.77*[0.30-0.155*(1-0)]/[1-0.155*(2.32-1)];
printf("\n yeild y = %.2f kg",y);
printf("\n In order to produce 0.063 kg/s of crystals, the required feed is: %.3f kg/sec",1*0.063/0.33);
q = 0.193*3.2*(313-298);
printf("\n The heat required to cool the solution %.1f kW",q);
q1 = 0.063*146.5;
printf("\n Heat of crystallisation = %.1f kW",q1);
printf("\n total heat loss = %.1f kW",q+q1);
printf("\n Assuming counter current flow");
deltaT1 = (313-293);
printf("\n deltaT1 = %d deg K",deltaT1);
deltaT2 = 298 - 288;
printf("\n deltaT2 = %d deg K",deltaT2);
deltaTlm = (deltaT1-deltaT2)/log(deltaT1/deltaT2);
printf("\n The logarithmic mean temperature is %.1f deg K",deltaTlm)

A = (q+q1)/(0.14*14.4);
printf("\n The heat transfer area required, A= Q/UdeltaTm = %.1f m^2",A);
printf("\n Length of heat exchanger required = %.1f",A)

printf("\n\n\n\n In practice 3 lengths, each of 3 m length would be specified.");


































