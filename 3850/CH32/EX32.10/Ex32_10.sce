
//To Find the Charge Remaining on the Capacitor 1s after the connection is made

//Example 32.10

clear;

clc;

C=50*10^-6;//Capacitance of Parallel Plate Capacitor

R=1.0*10^3;//Resistance of the connected Resistor

T0=C*R;//Time constant of RC Circuit

t=1;//Duration of Discharge of Capacitor

Q=400*10^-6;//Initial Charge on the Capacitor

q=Q*exp(-t/T0);//Charge remaining on the Cpacitor

printf("Charge remaining on the capacitor after 1s = %.2f*10^-7 uC",q*10^13);
