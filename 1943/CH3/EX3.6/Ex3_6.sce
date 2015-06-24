
clc
clear
//Input data
z=30//Percentage of total energy of fuel
n=40//Cycle efficiency in percent

//Calculations
on=((z/100)+(1-(z/100))*(n/100))*100//Overall efficiency in percent

//Output
printf('The overall efficiency of the combined plant is %3.0f percent',on)
