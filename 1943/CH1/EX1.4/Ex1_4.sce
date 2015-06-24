
clc
clear
//Input data
L=0.75//Load factor
C=0.60//Capacity factor
U=0.65//Use factor
M=60//Maximum power demand in MW
Y=8760//Number of hours in a year of 365 days

//Calculations
A=(L*M)//Average load in MW
P=((A*1000)*Y)/10^6//Annual energy production in kWh *10^6
PC=(A/C)//Plant capacity in MW
R=(PC-M)//Reserve capacity in MW
HIO=(P*1000/(U*PC))//Hours in operation in hrs
NH=(Y-HIO)//Hours not in service in a year in hrs

//Output
printf('(a) Annual energy production is %3.1f * 10^6 kWh \n(b) Reserve capacity over and above the peak load is %3.0f MW \n(c) The hours during which the plant is not in service per year is %3.0f hrs',P,R,NH)

