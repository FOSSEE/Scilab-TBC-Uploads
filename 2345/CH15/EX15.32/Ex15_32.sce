//Finding time
//Example 15.32(pg. 413)
clc
clear
m1=120//mass of water to be heated in kg
m2=20//mass of copper tank in kg
S1=1//specific heat of water
S2=0.095//specific heat of copper
T1=10//temp in degreeC
T2=60//temp in degreeC
H=(m1*S1*(T2-T1))+(m2*S2*(T2-T1))//heat required to raise the temp of water  and tank in kcal
H1=H*4200//heat required in Joules
e=0.8//thermal efficiency
E=H1/e//Energy input in joules
E1=E/(1000*3600)//energy input in kWh
r=3//rating of heater in kW
t=E1/r//time taken in hours
printf('Thus the time taken to raise the temp is %2.3f hours',t)
