//Exa2.3
clc;
clear;
close;
//given data
LatheCost=200;//in Rs/hour
grinderCost=150;//in Rs/hour
//given data for Design A
HoursOfLathe=16;//in hours/1000Unit
HoursOfGrinder=4.5;//in hours/1000Unit
TotalCostA=LatheCost*HoursOfLathe+grinderCost*HoursOfGrinder;//in Rs/1000unit
disp(TotalCostA*100000/1000,"Total cost of design A per 100,000 units : ");

//given data for Design B
HoursOfLathe=7;//in hours/1000Unit
HoursOfGrinder=12;//in hours/1000Unit
TotalCostB=LatheCost*HoursOfLathe+grinderCost*HoursOfGrinder;//in Rs/1000unit
disp(TotalCostB*100000/1000,"Total cost of design A per 100,000 units : ");
//Economic Advantage
disp(TotalCostA*100-TotalCostB*100,"Economic advantage of design B over design A per 100,000 units in Rs : ");