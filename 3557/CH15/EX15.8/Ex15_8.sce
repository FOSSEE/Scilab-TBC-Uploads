//Example 15.8//
//from the figure 
//p20,Cu-0.1Si ~23.610^*9 ohm m
prt=23.6*10^-9//ohm m //room temperature value of restivity
a=0.00393;//C^-1//temperature coefficient of restivity
t=100;//C //temperature
tn=20;//C//room temperature
p=prt*(1+a*(t-tn))
mprintf("p = %e ohm m",p)
