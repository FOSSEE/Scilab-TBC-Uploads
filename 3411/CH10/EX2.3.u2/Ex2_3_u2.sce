//Example 2_3_u2
clc();
clear;
//To calculate the drift velocity and their mobility
rowm=2700    //units in kg/m^3
NA=6.023*10^23                 //Avagadro number
MA=26.98*10^-3      //units in Kg
n=(rowm*NA)/MA          //units in m^-3
row=2.52*10^-6        //units in ohm metre
e=1.6*10^-19                   //units in  coulombs
u=(row/(n*e))*10^13       //units in meter^2 V^-1 s^-1
E=50       //units in Volt/meter
vd=u*E             //units in meter/sec
printf("The drift velocity of conduction electrons is vd=%.4f meter/sec",vd)
printf("\nMobility of conduction electrons is n=")
disp(n)
printf("meter^-3")
//Given in text book mobility is n=18.07*10^28 meter^-3 but the correct answer is n=6.027D+28 meter^-3
//Given in text book vd=0.066 meter/sec which is wrong and the correct one is vd=0.1307 meter/sec
