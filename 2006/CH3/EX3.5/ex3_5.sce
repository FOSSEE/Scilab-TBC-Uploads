clc;
p2=2.5; // Pressure of air in the cylinder in bar
T1=430; // Temperature of air in cylinder in Degree Celcius
V1=1.2; // Volume of cylinder in m^3
V2=0.6; // Volume of cylinder upto end stops in m^3
// (a) Temperature of air when the piston reaches the stops
T2=(T1+273)*(V2/V1); // constant pressure process
disp ("K",T2,"Temperature of air when the piston reaches the stops");
// (b) The pressure of air when its temperature equals to 25 oC
T3=25; //Room temperature in Degree Celcius
p3=p2*((T3+273)/T2); // constant volume process
disp ("bar",p3,"The pressure of air when its temperature equals to 25 oC");
