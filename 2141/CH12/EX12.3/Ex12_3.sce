
clc
//initialisation of variables
a=0.259*1/0.21//mole air
m=1.233*1.200//mole air
h=24.74//lbm/air
q=28.95//lbm/air
//CALCULATIONS
AF=(m*q)/h//lbm/air/lbm fuel
//RESULTS
printf('the air -fuel ratio on valumetric basic mass=% f lbm air/lbm fuel',AF)
