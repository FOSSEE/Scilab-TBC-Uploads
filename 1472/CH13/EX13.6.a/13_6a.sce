clc
//initialization of varaibles
v2=15.7 //cu ft/lb
T2=640 //R
cv=0.172
T1=400+460 //R
//calculations
du=cv*(T2-T1)
W=-du
//results
printf("Final specific volume = %.1f cu ft/lb",v2)
printf("\n Final temperature = %d ",T2)
printf("\n Work done = %.1f B/lb",W)
