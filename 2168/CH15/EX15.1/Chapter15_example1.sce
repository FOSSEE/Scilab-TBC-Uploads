clc
clear
//Input data
n=6//Number of cylinders
p=720//Horse power in h.p
N=180//Speed in r.p.m
f=250//Fuel rate in gm per horse power hour

//Calculations
w=(((f/1000)*p)/((N/2)*60*n))*1000//Weight of fuel per cycle in gm/cycle

//Outptut
printf('The quantity of fuel to be injected per cylinder is %3.2f gm/cycle',w)
