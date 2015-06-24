clear;
clc;
printf("\n example 16.3");
//(a) Air
//G kg/s dry air enter with 0.006G kg/s water vapour and hence the heat content of this stream= 
//[(1.00G) + (0.006G × 2.01)](385 − 273) = 113.35G kW

//(b) Wet solid
//0.125 kg/s enter containing 0.40 kg water/kg wet solid, assuming the moisture is expressed on a wet basis.
flowWater = (0.125*0.40);               //in kg/sec
flowDrySolid = (0.125-0.050);           //in kg/sec
//Hence heat content of this stream
q = [(0.050*4.18)+(0.075*0.88)]*(295-273);
printf("\n The heat content of this stream = %.2f kW",q);

//Heat out 
//(a) Air
//Heat in exit air = [(1.00 G) + (0.006 G × 2.01)](310 − 273) = 37.45G kW.
fd = 0.075;               //mass flow rate of dry solids in kg/sec
w = 0.05*0.075/(1+0.05);  //water in the dried solids leaving in kg/secs
we = (0.050 - w);         //The water evaporated into gas stream in kg/secs

//Assuming evaporation takes place at 295 K,then:
qout = 0.0464*[2.01*(310-295)+2449+4.18*(295-273)];
printf("\n Heat in the water vapour = %.1f kW",qout);

//the total heat in this stream = (119.30 + 37.45G) kW.
//(b) Dried solids


   //The dried solids contain 0.0036 kg/s water and hence heat conten     t of this stream is:
   q1 = [(0.075*0.88)+(0.0036*4.18)/(305-273)];
   printf("\n The dried solids contain 0.0036 kg/s water and hence heat content of this stream is: %.2f kW",q1);
   
   
//(c) Losses
//These amount to 20 kJ/kg dry air or 20m kW.
//Heat Balance
G = poly([0],'G');
G1 = roots(113.35*G + 6.05 - 119.30 - 37.45*G - 2.59 - 20*G);
printf("\n G = %.2f kg/secs",G1);
printf("\n Water in the outlet stream %.4f kg/secs",0.006*2.07+0.0464);
printf("\n The humidity H = %.4f kg/kg dry air",0.0588/2.07);

















