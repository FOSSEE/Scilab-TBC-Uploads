clc
clear
//Input data
d=[15,60]//Bore in cm
N=[1600,400]//Speed in r.p.m respectively
q=30//Injection of oil occupies 30 degrees of crank travel in each case
pc=30//Compression pressure in kg/cm^2
d=0.001//Delay time in sec
rp=5//Rapid combustion period is 5 degree of crank travel
pe=60//Compression pressure at the end of rapid compression in kg/cm^2

//Calculations
//For small engine
It1=(60/N(1))*(q/360)//Injection time in sec
pf1=((d/It1)+(rp/pc))*100//Percent fuel
//For large engine
It2=(60/N(2))*(q/360)//Injection time in sec
pf2=((d/It2)+(rp/pc))*100//Percent fuel
pr=(pc*(pf2/pf1))//Pressure rise in kg/cm^2
mp=(pc+pr)//Maximum pressure in kg/cm^2

//Output
printf('Pressure in the large engine is %3.1f kg/cm^2',mp)
