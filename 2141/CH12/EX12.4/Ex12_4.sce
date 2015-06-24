
clc
//initialisation of variables
c=87.1 //mole air
b=3.76 //mole air
a=10.53//mole air
d=2*a//mole air
B=23.16 //mole air
AF=(10.47*28.95)/16.0//lbm air/lbm fuel
AF1=(2+7.52)*28.95/16.0//lbm air/lbm fuel
//CALCULATIONS
F=AF/AF1*100//percent
//RESULTS
printf('the air fuel ratio the percent theoretical air=% f percent',F)
