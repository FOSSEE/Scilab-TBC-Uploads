//Example 1.3
clc,clear

Total_bill= 15*0.50 + 25 * 0.40 + 60 * 0.35 + 150 * 0.30 ; 
printf('Total bill is %f Rs\n',Total_bill)

total_units = 15 + 25 + 60 +150 ;
unit_cost = Total_bill / total_units ;
printf('Average unit cost = %f paise per kWh',unit_cost*100)
