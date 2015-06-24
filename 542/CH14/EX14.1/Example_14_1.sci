clear;
clc;
printf("\n Example 14.1");
//Assuming that the steam is dry and saturated at 205 kN/m2, then from the Steam Tables in the Appendix, the steam temperature = 394 K at which the total enthalpy = 2530 kJ/kg.

//At 13.5 kN/m2, water boils at 325 K and, in the absence of data on the boiling point elevation,this will be taken as the temperature of evaporation, assuming an aqueous solution. The total enthalpy of steam at 325 K is 2594 kJ/kg.

//Thus the feed, containing 10 per cent solids, has to be heated from 294 to 325 K at which temperature the evaporation takes place.

printf("\n mass of dry solids = %.1f kg/sec",(7*10/100));
x = poly([0],'x');
x1 = roots(0.7*100-50*(0.7+x));
printf("\n x = %.1f kg/sec",x1);
printf("\n Water to be evaporated = %.1f kg/sec",(7-0.7)-0.7);
printf("\n Summarising");
printf("\n Stream         Solids        Liquid         Total  ");
printf("\n                (kg/s)        (kg/s)         (kg/s) ");
printf("\n Feed               %.1f           %.1f            %.1f",x1,7-x1,x1+7-x1);
printf("\n Product            %.1f           %.1f           %.1f",x1,x1,x1+x1);
printf("\n Evaporation                       %.1f           %.1f",7-x1-x1,7-2*x1);
//Using a datum of 273K
q_entering = (7*3.76)*(294-273);
printf("\n Heat entering with the feed = %.1f kW",q_entering);
q_leaving = (1.4*3.14)*(325-273);
printf("\n Heat leaving with the product = %.1f kW",q_leaving);
printf("\n Heat leaving with the evaporated water = %d kW",5.6*2594);
printf("\n Heat transferred from the steam = %d kW",14526+228.6-552.7);
printf("\n The enthalpy of the condensed steam leaving at 352.7 K = %.1f kJ/kg ",4.18*(352.7-273));
printf("\n The heat transferred from 1 kg steam = %.1f kJ/kg",2530-333.2);
printf("\n Steam required = %.2f kg/s ",14202/2196.8);

//s the preheating of the solution and the sub-cooling of the condensate represent but a small proportion of the heat load, the temperature driving force may be taken as the difference between the temperatures of the condensing steam and the evaporating water, or:
printf("\n deltaT = %d deg K ",394-325);
printf("\n Heat transfer area ,A = %.1f m^2",14202/(3*69));













