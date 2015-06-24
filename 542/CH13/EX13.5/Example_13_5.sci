clear all;
clc;
printf("\n Example 13.5");
CSA = (%pi/4)*(0.075)^2;             //cross sectional area is in m^2
V = (0.0044*3);                      //volume of packing is in m^3
C = 0.01;                            //concentration is in kg/kg
printf("\n mass of acid transferred to the ether %.4f kg/m^2.sec or %f kg/sec",0.05*(0.01-0),0.005*0.0044);
printf("\n Acid in the aqueous feed = %.2f kg/m^3.sec",0.25*0.04);
printf("\n Acid in the raffinate = %.3f kg/m^2.sec",0.01-0.005);
printf("\n Concentration of acid in the raffinate = %.2f kg/kg",0.005/0.25);
printf("\n At the top of the column");
CR2 = 0.040;               //Concentration is in kg/kg
CR22 = 0.040*0.3;          //Concentration is in kg/kg
deltaC2 = (0.012-0.010);
printf("\n deltaC2 = %.3f kg/kg",deltaC2);
printf("\n\n At the bottom of the column");
CR1 = 0.20;               //Concentration is in kg/kg
CR11 = 0.020*0.3          //Concentration is in kg/kg
deltaC1 = 0.006 -0;       //Concentration is in kg/kg
printf("\n deltaC1 = %.3f kg/kg",deltaC1);
deltaCRlm = (0.006-0.002)/log(0.006/0.002);
printf("\n Logarithmic driving force is : %.4f kg/kg",deltaCRlm);
KRa = 0.000022/(0.01333*deltaCRlm);
printf("\n KRa = %.3f kg/m^3.sec(kg/kg)",KRa);
printf("\n Height of an overall transfer unit = %.2f m",0.25/KRa);
printf("\n The number of overall transfer units = %.2f ",3/0.54);

