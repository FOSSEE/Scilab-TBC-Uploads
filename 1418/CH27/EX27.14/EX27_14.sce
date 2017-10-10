//EXAMPLE 27.14
//DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
P1o=100;....//Output power of first generator in Kilo Watts
V1=250;.....//Terminal voltage of first generator in Volts
P2o=300;.....//Output power in second generator in Kilo Watts
V2=250;...//Terminal voltage of second generator in Volts
I1=200;..........//Current supplied by first generator in Amperes
I2=500;.......//Current supplied by second generator in Amperes
Ial=600;....//Additional load in Amperes

dI1=(P1o*Ial/(P1o+P2o));......//Current spplied to first generator in Amperes
dI2=(P2o*Ial/(P1o+P2o));......//Current supplied to second generator in Amperes

disp(dI1,"Current spplied to first generator in Amperes:");
disp(dI2,"Current supplied to second generator in Amperes:");
