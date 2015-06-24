clear;
clc;

//Example 1.2(Heating of water in an Electric Teapot)
//Mass of liquid water
m1=1.2,m2=0.5;//[Kg]
//Initial Temperature
t1=15;//[Degree Celcius]
//Final Temperature
t2=95;//[Degree Celcius]
//Specific heat of water
cp1=4.186;//[kJ/kG.K]
//Specific heat capacity of teapot
cp2=.7;//[]
Em=(m1*cp1*(t2-t1))+(m2*cp2*(t2-t1));//[kJ]
//Rating of Electric Heating Equipment
Em1=1.2;//[kJ/s]
dt=(Em/Em1)/60;//[seconds]
disp("minutes",round(dt),"of heat is","kJ",Em,"Time needed for this heater to supply ")