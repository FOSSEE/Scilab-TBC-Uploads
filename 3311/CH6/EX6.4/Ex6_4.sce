// chapter 6
// example 6.4
// Determine average current, power supplied and dissipated and power factor
// page-271-272
clear;
clc;
// given
Erms=230; // in V (voltage supply)
f=50; // in Hz (supply frequency)
R=5; // in ohm
Eb=150; // in V
// calculate
Em=Erms*sqrt(2); // calculation of maximum value of supply voltage
alpha1=asin(Eb/Em); // calculation of firing angle
Id=(1/(2*%pi*R))*(2*Em*cos(alpha1)-Eb*(%pi-2*alpha1)); // calculation of average charging current
P_s=Eb*Id; // calculation of power supplied to battery
Irms=sqrt((1/(2*%pi*R^2))*((Eb^2+Erms^2)*(%pi-2*alpha1)+(Erms^2*sin(2*alpha1))-(4*Em*Eb*cos(alpha1)))); // calculation of rms current
P_d=Irms^2*R; // calculation of power dissipated in resistor
pf=(P_d+P_s)/(Erms*Irms); // calculation of supply power factor
printf("\nThe average charging current is \tId=%.2f A",Id);
printf("\nThe power supplied to battery is \t%.2f W or \t %.2f kW",P_s,P_s*1E-3);
printf("\nThe rms current is \tIrms=%.2f A",Irms);
printf("\nThe power dissipated in resistor is \t%.2f W or \t %.2f kW",P_d,P_d*1E-3);
printf("\nThe supply power factor is \t%.3f",pf);
// Note: 1.There is calculation mistake in the book for P_s .
//       2. The formula used in the book to calculate Irms has little printing error for Em. It should be Erms for the first two Em used
//       3. The answer slightly vary due to precise calculations