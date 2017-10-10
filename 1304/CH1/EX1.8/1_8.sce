clear;
clc;
printf("\t\t\tExample Number 1.8\n\n\n");
// calculating minimum heat coefficient at the outer surface to maintain outer surface temperature at 100 degree celcius
// solution


T1 =200 ;//[degree celsius] temperature of the inner surface of the insulation layer


Tf =20 ;//[degree celsius] temperature of the air
k=1.5; //[W/m degree celcius] heat conductivity of insulator
L=0.05;//[m] insulator thickness
// Let T2 be the temperature of outer layer of the insulator
// qconv = heat transfer rate from outer layer to the air
//qcond = heat transfer rate across the insulator
// if qconv > qcond, then T2 will decrease
// if qcond > qconv, then T2 will increase
// for T2 to not go above 100 degree celcius, qcond should be less than equal to qconv , and equality will be when T2 is equal to 100
//thus qcond = qconv at T2=100
// qcond = k*(T1-T2)/L = h*(T2-Tf)  = qconv
//thus
T2 =100 ;//[degree celsius]maximum permissible temperature of the outer surface 


h = k*(T1-T2)/(L*(T2-Tf));// [W/m^2 degree celcius] convection heat trasnfer coefficient between insulator's outer surface and air 
printf("The minimum convection heat transfer coefficient required to maintain outer surface tempereature below 100 is %f W/m^2 degreee celcius",h);
