
clear;
clc;

printf("\t Example 7.7\n");

D=0.0001; //  diameter of heater, m
T1 = 293; // air temp.,K
T2=313; //heater temp.,K
p=17.8;  //dissipating heat, W/m

h=p/(3.14*D*(T2-T1)); // average  convective heat transfer coefficient. W/(m^2*K)
Nu=h*D/0.0264;  //nusselt no., Nu=h*D/thermal conductivity

Pr=0.71; //prandtl  no.

Re=((Nu-0.3)*(1+(0.4/Pr)^(2/3))^0.25/(0.62*Pr^(1/3)))^2; //reynolds no.

u=1.596*10^(-5)/(D)*Re+0.2;  //air velocity, m/s

printf("\t air velocity is : %.1f m/s\n",u);
printf("\t the data scatter in Red is quite small less than 10 percent, it would appear. therefore, this method can be used to measure local velocities with good accuracy.if the device is calliberated, its accuracy is improved further, such an air speed indicator is called a hot wire anemometer.")

//end