clc
//initialisation of variables
c=10^6//calories
tw=100//sec
ta=74//sec
dw=1000//kg/m^3
da=800//Kg/m^3
t2=50//c
t1=40//c
//CALCULATIONS
hw=((dw*1000*10)+(c*(t2-t1)))
rw=hw/tw
C=(((rw*ta)/(t2-t1))-c)/da
printf(' specific heat of alcohol= % 1f calories/kg',C)
