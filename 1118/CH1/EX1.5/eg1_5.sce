clear;
clc;
l1=15;                  //load in MW
l2=10;                 //load in MW
l3=5;                 //load in MW

t1=8;                //time in hours
t2=8;               //time in hours
t3=8;              //time in hours
t=24;             //time in hours

max_dem=max(l1,l2,l3); //load in MW
printf("\n the maximum demand is:  %.2f MW\n ",max_dem);

act_ener_consum=(l1*t1 + l2*t2 + l3*t3);  //energy consumed in MWH
printf("\n the actual energy consumed is:  %.2f MWH\n ",act_ener_consum);

avg_load=(act_ener_consum/t);    //load in MW
printf("\n the average demand is:  %.2f MW\n ",avg_load);

l_f=(avg_load/max_dem);         //load factor is unitless
printf("\n the load factor is:  %.2f\n ",l_f);
