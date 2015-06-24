//Example 1.4
clc,clear

demand_charges = 1*25 + 4*20 + 15*16 ;

energy_charges = 100*0.40 + 200*0.30 + 1700*0.25 ;

monthly_bill = demand_charges + energy_charges ;
printf('Total monthly bill for 2000 units consumption  = %d Rs',monthly_bill)
