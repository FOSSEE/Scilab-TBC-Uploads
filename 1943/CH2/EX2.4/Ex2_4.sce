
clc
clear
//Input data
ng=0.97//Efficiency of electric generator 
nt=0.95//Efficiency of turbine
nb=0.92//Efficiency of boiler
nc=0.42//Efficiency of cycle
no=0.33//Efficiency of overall plant

//Calculations
na=(no/(ng*nt*nb*nc))//Efficiency of auxiliaries
n=(1-na)*100//Percentage of total electricity generated which is consumed in running the auxiliaries

//Output
printf('Percentage of total electricity generated which is consumed in running the auxiliaries is %3.2f percent',n)
