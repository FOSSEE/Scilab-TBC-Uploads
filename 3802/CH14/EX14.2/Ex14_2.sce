//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex14_2.sce.

clc;
clear;
//Loads are in kilowatt
avg_load1=1;
avg_load2=0.3;
avg_load3=0.5;
avg_load4=2.5;
max_load1=5;
max_load2=2;
max_load3=2;
max_load4=10;
max_demand1=5;
max_demand2=1.6;
max_demand3=1;
max_demand4=5;

printf("\n (a)")
sumof_individualmax_dem=max_load1+max_load2+max_load3+max_load4;
max_demandof_wholegroup=max_demand1+max_demand2+max_demand3+max_demand4;
diversity_factor=sumof_individualmax_dem/max_demandof_wholegroup;
printf("\n  Diversity factor=%1.4f \n",diversity_factor)


printf("\n (b)")
LF_of_consumer1=avg_load1/max_load1; 
printf("\n  Load factor of consumer1 =%1.2f \n",LF_of_consumer1)
LF_of_consumer2=avg_load2/max_load2;
printf("\n  Load factor of consumer2 =%1.2f \n",LF_of_consumer2)
LF_of_consumer3=avg_load3/max_load3;
printf("\n  Load factor of consumer3 =%1.2f \n",LF_of_consumer3)
LF_of_consumer4=avg_load4/max_load4;
printf("\n  Load factor of consumer4 =%1.2f \n",LF_of_consumer4)

printf("\n (c)")
combined_avg_load=(avg_load1+avg_load2+avg_load3+avg_load4);
printf("\n  Combined average load =%1.1f kW \n",combined_avg_load)
combined_load_factor=combined_avg_load/max_demandof_wholegroup;
printf("\n  Combined load factor =%1.3f \n",combined_load_factor)
