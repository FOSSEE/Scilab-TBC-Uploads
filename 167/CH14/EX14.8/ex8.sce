//example 8
//Mixing of Conditioned Air with Outdoor Air
clear
clc
disp('The properties of each inlet stream are determined from the psychrometric chart to be')
v2=0.889 //Specific volume of outside air in m3/kg dry air
w2=0.0182  //properties of stream 2 in kg water/kg dry air
h2=79.0 //Specific enthalpy of outside air in kJ/kg dry air
v1=0.826 //Specific volume of saturated air in m3/kg dry air
w1=0.010 //in kg water/kg dry air
h1=39.4 //Specific enthalpy for stream 1 in in kJ/kg dry air
V1=50 //flow rate of saturated air in m^3/min
V2=20 //flow rate for stream 2 in  m^3/min
ma1=V1/v1 //mass flow rate for stream 1 in kg/min
ma2=V2/v2 //mass flow rate for stream 2 in kg/min
ma3=ma1+ma2 //mass balance of air in kg/min
disp('using the expression ma1/ma2=(w2-w3)/(w3-w1)=(h2-h3)/(h3-h1)')
w3=0.0122 //kg water/kg dry air
h3=50.1 //kJ/kg dry air
disp('These two properties fix the state of the mixture. Other properties of the mixture are determined from the psychrometric chart:')
T3=19.0 //dry bulb temp. in °C
x3=0.89//relative humidity of mixture 
v3=0.844 //Specific volume of mixture in m3/kg
V3=ma3*v3 //volume flow rate of the mixture in m^3/min
printf("\n Hence, the specific humidity of the mixture is = %.4f kg H2o/kg dry air. \n",w3);
printf("\n The dry bulb temp.  is = %.1f C. \n",T3);
printf("\n The volume flow rate of the mixture is = %.1f kg H2o/kg dry air. \n",V3);