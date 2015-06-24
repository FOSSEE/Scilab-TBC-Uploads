
clc
//initialisation of variables
a=39.7//mole air
b=15.85 //mole air
c=7.94 //mole air
d=3.76 //mole air
AF=(b+3.76*b)/a//mole air /lbm fuel
AF1=1.233 //moles air /lbm fuel
//CALCULATIONS
Air=AF/AF1*100//percent
//RESULTS
printf('the actual air fuel ratio on a mole basic=% f percent',Air)
