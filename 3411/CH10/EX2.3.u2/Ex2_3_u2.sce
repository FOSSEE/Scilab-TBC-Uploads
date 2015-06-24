//Example 2_3_u2
clc();
clear;
//To calculate the drift velocity and their mobility
rowm=2700    //units in kg/m^3
NA=6.023*10^23
MA=26.98*10^-3      //units in Kg
n=(rowm*NA)/MA          //units in m^-3
row=2.52*10^-6        //units in ohm metre
e=1.6*10^-19
u=(row/(n*e))*10^13       //units in met^2 V^-1 s^-1
E=50       //units in V/mts
vd=u*E             //units in mts/sec
printf("The drift velocity of conduction electrons is vd=%.4f met/sec",vd)
printf("\nMobility of conduction electrons is n=")
disp(n)
printf("metres^-3")
//Given in text book mobility is n=18.07*10^28 met^-3 but the correct answer is n=6.027D+28 met^-3
//Given in text book vd=0.066 met/sec which is wrong and the correct one is vd=0.1307 met/sec
