clc
// given data
Voldaily=1200 // daily production in m^3/day
prodrate=Voldaily/24.0 // gas production rate per hour
consrate=Voldaily/6.0 //gas consumtion rate per hour
Vg1=(consrate-prodrate)*2 // gas holder size required for 2 hours in litres
Vg2=prodrate*9 // gas holder size for 9 hours without consumption in litres
if Vg1>Vg2
    Vgmax=Vg1
else
    Vgmax=Vg2
Vg=Vgmax*1.25 // required gas holder with 25 % safety margin in litres
printf("\n required gas holder size is %.2f litres",Vg)
Capacity=Vg/Voldaily // required gas holder capacity

printf("\n required gas holder capacity is %.2f %%",Capacity*100)
    
