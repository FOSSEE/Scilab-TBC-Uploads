clc
//initialisation of variables
p=1.0//metres
p0=0.8//metres
p100=1.093//metres
//CALCULATIONS
t=((p-p0)*100/(p100-p0))
//RESULTS
printf(' temperature of hot water= % 1f C',t)
