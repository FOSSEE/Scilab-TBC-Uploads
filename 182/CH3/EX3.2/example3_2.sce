//To find the voltage sensitivity and Megohm sensitivity
// Example3-2 in page 39
clc;
//Given data
Is=(1*10^-6)/(10^-3);// current sensitivity in A/m
R=1000;// critical damping resistance of 1 kohm
//calculation
Vs=R*Is;//voltage sensitivity in mV/mm
Rs=Vs/Is;// megohm sensitivity i M-ohm
printf("Voltage sensitivity=%d mV/mm\n",Vs);
printf("megohm sensitivity=%d M-ohm",Rs/1000);
//result
//Voltage sensitivity=1 mV/mm
//Megohm sensitivity=1 Kohm