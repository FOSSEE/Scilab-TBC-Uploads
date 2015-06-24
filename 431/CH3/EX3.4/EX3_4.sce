//calculating induced emf and maximium flux density
//Chapter 3
//Example 3.3
//page 197
clear;
clc; 
disp("Example 3.3")
kVA=40;                //rating of the transformer
V1=2000;                //primary side voltage in volts
V2=250;                 //secondary side voltage in volts
R1=1.15;                //primary resistance in ohms
R2=0.0155;              //secondary resistance in ohms
R=R2+(((V2/V1)^2)*R1)
printf("Total resistance of the transformer in terms of the secondary winding=%fohms",R)
I2=(kVA*1000)/V2;
printf("\nFull load secondary current=%dA",I2)
printf("\nTotal resistance load on full load=%fVolts",(I2*R))
printf("\nTotal copper loss on full load=%fWatts",((I2)^2*R))
