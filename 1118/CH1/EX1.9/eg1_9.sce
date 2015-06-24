//to calculate a).max demand on the station  b).installed capacity  c).energy supplied in a year

clc;
peak_l1=25;           //load is in MW
peak_l2=20;          //load is in MW
peak_l3=30;         //load is in MW
ann_lf=0.6;        //load factor is dimentionless
d_f=1.65;         //diversity factor is dimentionless

max_dem=(peak_l1 + peak_l2 + peak_l3)/d_f;
printf("\n the maximum demand is:  %.2f MW\n ",max_dem);   //demand in    MW

i_cap=(peak_l1 + peak_l2 + peak_l3);      //capacity in MW
printf("\n the installed capacity is:  %.2f MW\n ",i_cap);

avg_l=(ann_lf*max_dem);
esp_year=(avg_l)*8760;                //energy supplies per year in MWH
printf("\n the energy supplied in a year is:  %.2f MWH\n ",esp_year);
