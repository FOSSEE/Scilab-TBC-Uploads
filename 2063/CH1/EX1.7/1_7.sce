clc
clear
//Input data
r=5.5;//Compression ratio of an engine working on the otto cycle
Q=250;//Heat supplied during constant volume in kJ
N=500;//Engine operating speed in rpm
r1=1.4;//Isentropic ratio

//Calculations
n=(1-(1/r)^(r1-1))*100;//Otto cycle efficiency in percent
W=Q*(n/100);//Work done per cycle in kJ
P=W*(N/60);//Work done per second i.e., Power developed in kJ/s or kW

//Output data
printf('Ideal power developed by the engine is %3.0f kW',P)
