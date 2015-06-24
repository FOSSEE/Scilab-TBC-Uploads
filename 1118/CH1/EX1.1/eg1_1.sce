clear;
clc;
nos_lmps=8;
pow_of_lmp=60;                      //power in watts
dur_per_day=5;                     //duration in hours
t_dur=24;                         //duration in hours
max_dem=1500;                    //demand in watts

nos_heaters=2;
pow_of_heaters=1000;             //power in watts
dur_per_day_heater=3;           //duration in hours

enrgy_lmp=(nos_lmps*pow_of_lmp*dur_per_day);     //energy in watt hour
energy_heater=(nos_heaters*pow_of_heaters*dur_per_day_heater);  //energy in watt hour

act_ene_con=(enrgy_lmp + energy_heater);         //energy in watt hour

avg_load=(act_ene_con/t_dur);                   //avverage load in  watt
printf("\n The average load of the consumer is:  %.2f W",avg_load);
mon_ene_con=(act_ene_con*30);                  //monthly energy consumption in wtthour
printf("\n The monthly energy consumption of the consumer is:  %.0f kWh",mon_ene_con/1000);

load_fac=(avg_load/max_dem);                   //load factor is unitless
printf("\n The load factor of the consumer is:  %.4f",load_fac);

