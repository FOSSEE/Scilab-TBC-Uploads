//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 4.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

max_demand=100;                                     //Maximum demand of generating station in MW
LF=0.65;                                            //Load factor of generating station in percentage
PCF=0.50;                                           //Plant capacity factor of generating station in percentage
PUF=0.80;                                           //Plant use factor of generating station in percentage
avg_demand=max_demand*LF;                           //Average demand of generating station in MW
daily_energy=avg_demand*24;                         //Daily energy produced by generating station in MWh
PRC=avg_demand/PCF;                                 //Plant rated capacity  of generating station in MW
RC=PRC-max_demand;                                  //Reserve capacity of generating station in MW
max_energy=PRC*24;                                  //Maximum energy produced if plant is running all the time in MWh
FL_max_energy=daily_energy/PUF;                     //Maximum energy produced if plant is running at full load in MWh
UF=max_demand/PRC;                                  //Utilization factor of generating station 


printf("\nDaily energy produced %.f MWh",daily_energy);
printf("\nInstalled capacity of plant %.f MW",PRC);
printf("\nReserve capacity of plant %.f MW",RC);
printf("\nMaximum energy that could be produced if the plant is running all the time %.f MWh",max_energy);
printf("\nMaximum energy that could be produced if the plant is running at full load %.f MWh",FL_max_energy);
printf("\nUtilization factor %.3f",UF);
