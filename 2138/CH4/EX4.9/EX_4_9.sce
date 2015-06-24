//Example 4.9 //total of bills
clc;
clear;
close;
p=30;//horse power of motor
r=24;// rupees per kWh
ec=35;//paisa per unit
n=80;//percentage of load
t=8;// in hours
d=25;// total days
ne=96;//efficiency of motor in percentage
mo=(n*p)/100;//output of motor at 80% of load
mi=(mo*100*746)/(ne);//input of motor in watts
ecm=mi*10^-3*t*d;//energy consumed in a month
ecu=(ecm*35)/100;//energy charges
mid=(30*100*746)/(ne*1000);//input of motor in kW at demanded
ecud=(mid*24);// demanded connection in rupees
ta=ecu+ecud;//total bill in rupees
disp(ta,"total bill in rupees is")
