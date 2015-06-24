
clc
//initialisation of variables
h=-86748//Btu/lb mole fuel
P=-1692054 //Btu/lb mole fuel
W=200*2545//Btu/hr
nf=1209000/1605306//moles fuel/hr
n=114.23//Btu/lb mole fuel
//CALCULATIONS
mf=nf*n//lbm fuel /hr
//RESULTS
printf('The fuel consumption per hour=% f lbm fuel/hr',mf)
