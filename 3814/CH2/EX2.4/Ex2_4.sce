//page no 42 to find maximum pressure experienced by the person on the hand
clc;
p=101.3e3 // specific gravity 
p1=1.225 // stagnation pressure
v= ((90*1000)/3600)
P0=p+((p1*v*v)/2)
mprintf('The maximum pressure = %f kPa',P0)
