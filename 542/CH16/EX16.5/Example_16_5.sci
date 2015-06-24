clear;
clc;
printf("\n Example 16.5");
//Inlet air temperature
Tair = 400;            //Inlet air temperature in kelvins
H = 0.01;              //Humidity is in kg/kg dry air
//*therefore wet bulb temperature = 
Twetbulb = 312;        //Inlet wet-bulb temperature
NTU = 1.5;              //Number of transfer units

//Then for adiabatic drying the outlet air temperature,To is given by
To = poly([0],'To');
To1 = roots(exp(1.5)*(To-312)-(400-312));
printf("\n For adiabatic drying the outlet air temperature = %.1f K",To1);

//Solids outlet temperature will be taken to be maximum allowable,325K
//From the steam tables in the Appendix, the latent heat of vaporisation of water at 312 K is2410 kJ/kg. Again from steam tables, the specific heat capacity of water vapour = 1.88 kJ/kg K and that of the solids will be taken as 2.18 kJ/kg K.

//For a mass flow of solids of 0.35 kg/s and inlet and outlet moisture contents of 0.15 and 0.005 kg/kg dry solids respectively, the mass of water evaporated = 0.35(0.15 − 0.005) = 0.0508 kg/s.

//For unit mass of solids ,the heat duty includes:
       //Heat to the solids
       qsolids = 2.18*(325-300);       //heat to solids in kJ/kg
       //Heat to raise the moisture to the dew point
       qdew = (0.15*4.187*(312-300));  //in kJ/kg
       //Heat of vaporisation
       qvap = 2410*(0.15-0.005);       //in kJ/kg
       //Heat to raise remaining moisture to solids outlet temperature
       qremaining = (0.05*4.187)*(325-312);
       //Heat to raise evaporated moisture to the air outlet temp.
       qevapo = (0.15-0.005)*1.88*(331.5-312);
       qtotal = qsolids + qdew + qvap + qremaining + qevapo;
       printf("\n Total heat = %.1f kJ/kg or %d kW",qtotal,qtotal*0.35);

//The humid heat of entering air is 1.03 kJ/kg K
       //G1 (1 +H1) = Q/Cp1(T1 − T2)
       //where: G1 (kg/s) is the mass flowrate of inlet air,
       //H1 (kg/kg) is the humidity of inlet air,
       //Q (kW) is the heat duty,
       //Cp1 (kJ/kg K) is the humid heat of inlet air
       //and: T1 and T2 (K) are the inlet and outlet air temperatures         respectively.
       G1 = poly([0],'G1');
       G = roots(G1*(1+0.01)-146/(1.03*(400-331.5)));
       printf("\n Mass flow rate of inlet air = %.2f kg/secs",G);
       printf("\n Mass flow rate of dry air ,Ga = %.2f kg/secs",G/1.01);
       printf("\n the humidity of the outlet air H2 = %.4f kg/kg",0.01+0.0508/2.05);

//At a dry bulb temperature of 331.5 K, with a humidity of 0.0347 kg/kg, the wet-bulb temperatureof the outlet air, from Figure 13.4 in Volume 1, is 312 K, the same as the inlet, which is the case for adiabatic drying.

//The dryer diameter is then found from the allowable mass velocity of the air and the entering air flow and for a mass velocity of 0.95 kg/m^2.secs, the cross sectional area of the dryer is
printf("\n The cross sectional area of the dryer is %.2f m^2",2.07/0.95);
printf("\n The equivalent diameter of the dryer = %.2f m",[(4*2.18)/%pi]^0.5);

//With a constant drying temperature of 312 K:
        //at the inlet
        deltaT1 = 400-312;           //inlet temperature is in deg K
        //at the outlet
        deltaT2 = 331.5-312;         //outlet temperature is in deg K
        Tlogmean = (deltaT1 - deltaT2)/log(deltaT1/deltaT2);
        printf("\n Logarithmic mean temperature difference = %.1f deg K",Tlogmean);
//The length of the dryer, L is then: L = Q/(0.0625πDG^(0.67)*Tm)
    //where D (m) is the diameter
    //and G(kg/m^2.secs) is the air mass velocity.
    L = 146/[0.0625*(%pi)*1.67*(0.95)^(0.67)*45.5];
    printf("\n The length of the dryer = %.1f m",L);
    printf("\n Length/diameter ratio = %d ",10.1/1.67);











