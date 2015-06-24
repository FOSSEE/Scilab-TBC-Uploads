clc
clear

//input
d1=400;//load in kW at unity power factor
d2=1000;//load in kVA at a lagging power factor
d3=500;//load in kVA at a leading power factor
pf1=1;//unity power factor
pf2=0.71;//lagging power factor
pf3=0.8;//leading power factor

//calculations
pa=d1+(d2*pf2)+(d3*pf3);//total active power loading in watts
pr=(d2*pf2)-(d3*sin(acos(pf3)));//total reactive power in var
pk=(((pa^2)+(pr^2))^0.5)/1000;//total MVA loading
pf=pa/(pk*1000);//total power factor

//output
mprintf('the total load on the sub-station is %3.2f MVA at a lagging power factor of %3.3f ',pk,pf)
