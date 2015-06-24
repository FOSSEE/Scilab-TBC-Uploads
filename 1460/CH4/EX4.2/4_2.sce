clc
//Initialization of variables
d=500 //ft
Pi=14 //lb/in^2
Pd=15 //lb/in^2
Sv=0.016 //ft^3 /lb
//calculations
Wi=144*Pi*Sv
Wf=144*Pd*Sv
PEi=0
PEf=d
Winput=Wf-Wi+PEf-PEi
//results
printf("Input work = %.1f ft-lb/lbm",Winput)
