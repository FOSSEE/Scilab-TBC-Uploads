// example 1
// general energy analysis
clear
clc
d=0.75 //density of gasoline in kg/l
v=5 //average consumption of gasoline by the car in litres/day
h=44000 //heating value of gasoline in kJ/kg
disp('daily consumption of fuel = c = d*v ')
c=d*v //average consumption of gasoline in kg/day
e=c*h //daily energy requirement of car in kJ/day
E=0.1*6.73*10^10 //energy released by complete fussion of 0.1 kg of uranium in kJ
x=E/e //no. of days for which E amount of energy can meet the energy requirements of car
printf("\n Hence, the car will require refilling after = %.0f years. \n",x/365);