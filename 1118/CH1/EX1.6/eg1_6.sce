clear;
clc;
max_dem=500;                        //demand is in MW
min_dem=400;                       //demand is in MW
cap_plnt=750;                     //capacity of the plant is MW

avg_ann_load=(max_dem + min_dem)/2;    //load is in MW
printf("\n the average annual load is:  %f MW\n ",avg_ann_load);

cap_f=(avg_ann_load/cap_plnt);       //capacity factoe is dimentionless
printf("\n the capacity factor is:  %f\n ",cap_f);

l_f=(avg_ann_load/max_dem);        //load factor is dimentionless
printf("\n the load factor is:  %f\n ",l_f);

u_f=(max_dem/cap_plnt);          //utilization factor is dimetionless
printf("\n the utilization factor is:  %f\n ",u_f);
