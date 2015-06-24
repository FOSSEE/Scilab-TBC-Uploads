clc
clear

//input
p=27;//power rating of a delta connected 3 phase a.c. motor in kW
v=500;//voltage rating of a delta connected 3 phase a.c. motor in volts
n=0.9;//full load effeciency in per units
pf=0.7;//full load power factor
f=50;//general supply frequency in hertz

//calculations
il=(1000*p)/((3^0.5)*v*pf*n);//line current taken by motor in amperes
phi=acos(pf);//phase angle
//the line current will lag by phi radians on the line voltage
//to bring total current in phase with line voltage ic*sin60 must equal ilsin75.(information from phasor diagram)
ic=(il*sin(phi+0.524))/sin((60*%pi)/180);//capacitor current in amperes and  0.524 is 30degrees converted into radians and added in respect to above mentioned condition 
c=(ic*1000000)/((3^0.5)*v*f*2*%pi);//capacitance per phase in micro farad

//output
mprintf('the required capacitance per phase is %3.0fuF',c)
