clear;
clc;
printf("\n Example 16.6");
H = 0.036;               //Humidity is in kg/kg at 811 K
//Taking R as 90 per cent and P as 101.3 kN/m2, then, for assumed values of Tb of 321, 333 and 344 K
     //Pw = 13,20 and 32 kN/m2, respectively
     //G = 27.8, 12.9 and 6.02 kg/s, respectively.
     
//for Tb = 321, 333 and 344 K,
//G = 7.16, 7.8 and 7.54 kg/s respectively.
Tb = [321 333 344];
G1 = [27.8 12.9 6.02];           //Temperature is in kelvins
G = [7.16 7.8 7.54];             //flow rate in kg/secs
plot2d(Tb,G,style=3);
plot2d(Tb,G1,style=2);
xtitle("Temperature vs Flow rate","Temperature Tb(K)","Flow rate G(kg/secs)");


//Plotting G against Tb for each equation on the same axis, then
Go = 8.3;                         //Gas flow rate is in kg/secs
Tb = 340;                         //temperature is in Kelvins
uf = 0.61;                        //velocity is in m/secs

D = sqrt(340*(8.3+(1.58*1.26))/(278*0.61));
printf("\n D = %.2f m",D);
















