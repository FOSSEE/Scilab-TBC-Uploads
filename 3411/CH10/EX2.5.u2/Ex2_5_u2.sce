//Example 2_5_u2
clc();
clear;
//To calculate the no of states for conduction electrons and the average energy interval 
n=9.11*10^-31
E=5*1.6*10^-19        //units in J
v=10^-6       //units in met^3
h=6.67*10^-34
NE=(8*sqrt(2)*%pi*n^1.5*E^0.5*v)/h^3        //units in /J
no=NE*0.01*1.6*10^-19           //units in J
printf("Available number of energy states is ")
disp(no)
interval=0.01/no        //units in eV
printf("Average energy interval is")
disp(interval)
printf("eV")
//Given in text book available no of energy states is 1.52*10^20 but correct answer is 1.490D+20  and for average energy interval is 7*10^-23 eV but correct answer is 6.709D-23 eV 
