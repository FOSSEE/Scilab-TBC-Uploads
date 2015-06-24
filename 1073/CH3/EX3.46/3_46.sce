clc;
clear;
//Example 3.46
dT=8    //[K]
P=0.17  //[Mpa]
P=P*1000    //[kPa]
h1=2847 //[W/(sq m.K)]
P1=101.325  //[kPa]
h=5.56*(dT^3)   //[W/sq m.K]
Q_by_A=h*dT //[W/sq m]
hp=h*(P/P1)^(0.4)   //[W/sq m.K]
//Correponding heat flux is :
Q_by_A1=hp*dT //[W/sq m]
per=(Q_by_A1-Q_by_A)*100/Q_by_A //Percent increase in heat flux
printf("\nHeat flux when pressure  is 101.325 kPa is %f W/sq m\n",Q_by_A);
printf("\n Percent increase in heat flux is %f  percent",round(per));
