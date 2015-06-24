clear;
clc;
printf("\n Example 2.2");
//Calculating the maximum size of the particle that can be fed to the rollers.
//Given angle of nip = 31degree
//Given diameter of the crushimg rolls = 1m
//Distance between the crushing rolls is 12.5mm
r1 = 0.5;//size of crushing rolls is in meters
b = 0.00625;//Distance between the crushing rolls is 0.0125mm
r2 = (r1 + b)/(cos((%pi/180)*15.5))-0.5;
printf("\nThe maximum size of the particles which should be fed to the rollers : %d mm",r2*10^3);

//Calculating the throughput at 2.0 Hz when the actual capacity of the machine is 12%.
//Working face of the rolls are 0.4m long
//bulk density of the feed is 2500kg/m^3
printf("\nThe cross sectional area for flow is %.3f  m^2",0.0125*0.4);
printf("\nThe volumetric flow rate is %.2f m^3/sec",2.0*0.005);
printf("\nThe actual throughput is %d kg/sec",0.010*12*2500/100);
