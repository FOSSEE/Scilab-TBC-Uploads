clear
clc
V1=500;//volume of H2O in cm^3
V2=15.03;//volume of CH4 in cm^3
V=V2/V1;//volume dissolved in 1 cm^3 water
P=1;//pressure in atm
T=273;//Temperature in K
R=82.06;//In cm^3atm/Kmol
X=(P*V)/(R*T);//amount of gas dissolved in mol
M=(X*16);//mass of gas dissolved in gm
K=M/P;//
m1=0.001;//amount of CH4 in mol
m2=300;//amount of H20 in cm^3
M1=(m1*16)/m2;//mass of gas dissolved in 1 cm^3
P0=M1/K;//pressure if Henry's law holds in atm
printf('P0=%.3f atm',P0)

 //There are some errors in the solution given in textbook
//page 58
