//to calculate the a).diversity factor  b).avg load and laod factor of each consumer c).avg load and load factor of combined load.
//postfix 1,2...4 shows the consumers.

clc;
//for consumer1
avg_load1=1;                 //load in kwatt
max_dem1=5;                 //demand in kwatt
dem1_at8=5;                   //demand in kwatt
l_f1=(avg_load1/max_dem1);   //load factor is unitless
printf("\n the load factor for consumer 1 is:  %.2f \n",l_f1);

//for consumer2
max_dem2=2;                 //demand in kwatt
dem2_at8=1.6;                   //demand in kwatt
l_f2=0.15;                 //load factor is unitless
avg_load2=(l_f2*max_dem2); //load in kwatt
printf("\n the avg load for consumer 2 is:  %.2f \n",avg_load2);

//for consumer3
avg_load3=0.5;                 //load in kwatt
max_dem3=2;                   //demand in kwatt
dem3_at8=1;                   //demand in kwatt
l_f3=(avg_load3/max_dem3);   //load factor is unitless
printf("\n the load factor for consumer 3 is:  %.2f \n",l_f3);

//for consumer4
max_dem4=10;                 //demand in kwatt
dem4_at8=5;                   //demand in kwatt
l_f4=0.25;                 //load factor is unitless
avg_load4=(l_f4*max_dem4); //load in kwatt
printf("\n the avg load for consumer 4 is:  %.2f \n",avg_load4);

tot_avg_load=(avg_load1 + avg_load2 + avg_load3 + avg_load4); //load in kwatt
printf("\n the total avg load is:  %.2f \n",tot_avg_load);

tot_max_dem=(max_dem1 + max_dem2 + max_dem3 + max_dem4);    //demand in kwatt
printf("\n the total maximum demand is:  %.2f\n  ",tot_max_dem);

tot_dem_at8=(dem1_at8 + dem2_at8 + dem3_at8 + dem4_at8);             //demand in kwatt
printf("\n the total demand at 8pm is:  %.2f\n ",tot_dem_at8);

div_fact=(tot_max_dem/tot_dem_at8);                  //diversity factor is unitless
printf("\n the diversity factor is:  %.2f\n ",div_fact);

load_factor=(tot_avg_load/tot_dem_at8);             //load factor is unitless
printf("\n the load factor is:  %.2f\n ",load_factor);
