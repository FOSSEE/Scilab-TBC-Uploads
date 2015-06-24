clc
clear

//input
p=50;//power rating of a delta connected 3 phase a.c. motor in kW
v=415;//voltage rating of a delta connected 3 phase a.c. motor in volts
n=0.85;//full load effeciency in per units
pf=0.87;//full load power factor

//calculations
inp=p/n;//full load input in kW
il=inp*(1000/((3^0.5)*v*pf));//line current in amperes
ip=il/(3^0.5);//phase current in amperes

//output
mprintf('the line and motor phase currents are %3.0fA and %3.1fA respectively',il,ip)
