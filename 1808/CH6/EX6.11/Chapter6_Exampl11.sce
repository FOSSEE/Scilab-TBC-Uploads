clc
clear
//INPUT DATA
P=11;//Power used to run the compressor in kW
h1=188.41;//total heat of gas leaving refrigeration in kJ/kg
h2=213.53;//total heat of gas leaving compressor in kJ/kg
h4=77.46;//total heat of liquid before throttling in kJ/kg

//CALCULATIONS
Re=h1-h4;//refrigeration effect
wd=h2-h1;//work done
cop=Re/wd;//COP of refrigerant system
m=P/wd;//mss of refrigerant 

//OUTPUT
printf('(i)COP is %3.3f \n (ii)mass of refrigerant %3.4f kg/s ',cop,m)













