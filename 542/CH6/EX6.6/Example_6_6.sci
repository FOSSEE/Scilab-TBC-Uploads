clear;
clc;
printf("\n Example 6.6");
cp = 0.85;                              //specific heat capacity of the air
h = [0 0.625 1.25 1.875 2.5 3.75];                       //height in mm  
T=[339.5 337.7 335.0 333.6 333.3 333.2];//temperature in K
deltaT = T - 333.2;                     //temperature difference in kelvins
plot(h,deltaT,"o-");
xtitle("deltaT as a function of bed height","Height above bed support z(mm)","Temperature difference deltaT (K)");
//From the plot area under the curve is 6.31 K mm 
sp = (6/(0.25*10^(-3)))*(0.5);  //sp is surface area per unit volume in m^2/m^3
G = 0.2;                        //in kg/m^2sec
Cp = 850;                       //Cp is in J/kg K
h1 = poly([0],'h1');
s = roots(0.2*850*6.3-h1*1.2*10^(4)*6.31*10^(-3));
printf(" \n Coefficient for heat transfer between the gas and the particles= %.1fW/m^2 K",s);

printf("\n Let the evaporation rate be 0.1 kg/sec at a temp difference = 50 degK");
mdot = 0.1;         //evaporation rate is 0.1 kg/sec
Latent_heat = 2.6*10^(6);
printf("\n The heat flow = %.1f*10^5 W",mdot*Latent_heat*10^(-5));
A=(2.6*10^5)/(14.1*50);
printf("\n the effective area of the bed A = %d m^2",A);
printf("\n The surface area of the bed = %d m^2",0.1*1.2*10^4);
printf("\n hence the fraction of the bed = %.2f",369/1200);



 