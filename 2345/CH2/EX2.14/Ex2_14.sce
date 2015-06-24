//Finding temperature
//Example 2.14(pg. 27)
clc
clear
V15=250,Vt=250//voltage in volts
I15=5,It=4//current in amperes
T=15//temp in degree C
R15=V15/I15//resistance in ohms at 15 degreeC
printf('Resistance at 15 degree C is %3.1f ohms \n',R15)
Rt=Vt/It//resistance at t degreeC
printf('Resistance at t degree C is %3.1f ohms \n',Rt)
k0=0.0038
R0=R15/[1+(k0*T)]
printf('Resistance at 0 degree C is %3.2f ohms \n',R0)
t=[(Rt/R0)-1]/k0
printf('Temperature t is %3.2f degree C',t)
