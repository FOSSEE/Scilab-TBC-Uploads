clc();
clear;
// To calculate the hysterisis power loss and power loss
hl=200;   //hysterisis loss per cycle in J/m^3
M=7650;    //atomic weight in kg/m^3
m=100;   //magnetisation cycles per second
hpl=hl*m;
pl=hpl/M;
printf("hysterisis power loss per second is %f watt/m^3",hpl);
printf("the power loss is %f watt/kg",pl); 
