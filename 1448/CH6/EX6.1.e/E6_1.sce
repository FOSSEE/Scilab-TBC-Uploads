clc
//Initialization of variables
m=0.14 //mol/kg
w=1 //kg Assume
//Calculations
ngly=m*w
nwater=w*10^3 /18.02
ntotal=ngly+nwater
xgly=ngly/ntotal
//results
printf('Mole fraction of glycerine  is xgly = %.2e',xgly)
