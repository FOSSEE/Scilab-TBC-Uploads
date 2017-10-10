//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
t=3//sec
m=20//per mint
a=4//ft
//CALCULATIONS
T=2*%pi/t//ft/s
V=T*a//ft/s
F=(T)^2*a//ft/s^2
//RESULTS
printf('th acceleration x must be a maximum=% f ft/s^2',F)
