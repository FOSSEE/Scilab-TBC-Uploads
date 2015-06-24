clc
clear
disp("sample problem in 23.11.2")
pp=11 //power capacity
cost=35 //cost of the system
in=0.14 //interest
lis=30 //life of system
sv=0.15 //salvage value
es=13.5*10^6 //energy sent
los=0.05 //losses
omc=0.02 //O&M charges
gr=0.006 //general revenue
rd=(1-sv)*100/lis
rdd=rd/100
tac=cost*(in+omc+rdd+gr)
ery=es*(1-los)
wc=(tac/ery)*10^5
printf("rate of depreciation is %.3fpercent \ntotal annual cost is Rs.%.5f lakhs/year \nenergy received per year %ekWh/year \nwheeling charges Rs%f",rd,tac,ery,wc)