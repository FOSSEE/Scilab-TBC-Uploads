//Example 5_13
clc();
clear;
//To find out how large the force is required
m=2   //units in Kg
g=9.8   //units in meters/sec^2
hc_ha=10.03   //units in meters
sbc=0.030   //units in meters
f=(m*g*(hc_ha))/sbc   //units in Newtons
printf("The average force required is f=%d N",f)
//In text book answer is printed wrong as f=6550 N correct answer is f=6552N
