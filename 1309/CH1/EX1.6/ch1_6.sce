clear;
clc;
printf("\t\t\tchapter1_example6\n\n\n");
// determination of radiation thermal conductance
A=14*30; // area in sq.ft
T1=120+460; // driveway surface temperature in degree Rankine
T2=0; // surface temperature assumed to be 0 degree Rankine
Qr=73320; // heat loss rate in BTU/hr
hr=Qr/(A*(T1-T2)); // radiation thermal conductance in BTU/(hr.ft^2.(degree Rankine)
printf("\nthe radiation thermal conductance is %.2f BTU/(hr. sq.ft.(degree Rankine))",hr);
